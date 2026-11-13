#!/usr/bin/env bash
# OpenPacks POS / Retail / Vendor Pack — Free Install Wizard
# Base: Dolibarr (Docker) as practical free ERP+POS, or note for Posnic/MyCompany
set -e

echo ""
echo "=========================================="
echo "  OpenPacks — POS / Retail / Vendor Pack"
echo "  Free Docker install (Dolibarr)"
echo "=========================================="
echo ""

if ! command -v docker >/dev/null 2>&1; then
  echo "Docker is required. Install from https://docs.docker.com/get-docker/"
  exit 1
fi

COMPANY="${1:-My Shop}"
PORT="${2:-8080}"

echo "Company: $COMPANY"
echo "Port:    $PORT"
echo ""

# Generate a simple compose if not present
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

echo "Starting..."
docker compose up -d

echo ""
echo "=========================================="
echo "  POS / Retail pack is starting"
echo "  Open:  http://localhost:${PORT}"
echo "  Login: admin / admin"
echo ""
echo "  Demo data is enabled. Change the"
echo "  admin password after first login."
echo "=========================================="
echo ""
