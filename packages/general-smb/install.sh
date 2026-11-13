#!/usr/bin/env bash
# OpenPacks General SMB Pack — Free Docker Install
# Base: Dolibarr
set -e

echo ""
echo "=========================================="
echo "  OpenPacks — General SMB Pack (Free)"
echo "  Dolibarr ERP / CRM / Invoicing"
echo "=========================================="
echo ""

if ! command -v docker >/dev/null 2>&1; then
  echo "Docker required. https://docs.docker.com/get-docker/"
  exit 1
fi

COMPANY="${1:-My Business}"
PORT="${2:-8081}"

if [ ! -f docker-compose.yml ]; then
  cat > docker-compose.yml << EOF
services:
  db:
    image: mariadb:11
    restart: unless-stopped
    environment:
      MYSQL_DATABASE: dolibarr
      MYSQL_USER: dolibarr
      MYSQL_PASSWORD: dolibarr
      MYSQL_ROOT_PASSWORD: rootpass
    volumes:
      - dbdata:/var/lib/mysql
    healthcheck:
      test: ["CMD", "healthcheck.sh", "--connect", "--innodb_initialized"]
      interval: 10s
      timeout: 5s
      retries: 10

  app:
    image: dolibarr/dolibarr:latest
    restart: unless-stopped
    depends_on:
      db:
        condition: service_healthy
    ports:
      - "${PORT}:80"
    environment:
      DOLI_DB_HOST: db
      DOLI_DB_NAME: dolibarr
      DOLI_DB_USER: dolibarr
      DOLI_DB_PASSWORD: dolibarr
      DOLI_ADMIN_LOGIN: admin
      DOLI_ADMIN_PASSWORD: admin
      DOLI_COMPANY_NAME: "${COMPANY}"
      DOLI_INIT_DEMO: "1"
    volumes:
      - docs:/var/www/documents
      - custom:/var/www/html/custom

volumes:
  dbdata:
  docs:
  custom:
EOF
fi

echo "Starting General SMB pack on port $PORT..."
docker compose up -d

echo ""
echo "=========================================="
echo "  Ready: http://localhost:${PORT}"
echo "  Login: admin / admin"
echo "=========================================="
echo ""
