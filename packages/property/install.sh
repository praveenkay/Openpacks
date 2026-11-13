#!/usr/bin/env bash
# OpenPacks Property Pack — Free Install Wizard
# Base: OpenProperty (MIT) — units, leases, rent, maintenance
set -e

echo ""
echo "=========================================="
echo "  OpenPacks — Property Pack (Free)"
echo "  OpenProperty self-host installer"
echo "=========================================="
echo ""

# Check Node
if ! command -v node >/dev/null 2>&1; then
  echo "Node.js is required. Install from https://nodejs.org (v20+)"
  exit 1
fi
NODE_VER=$(node -v | cut -d. -f1 | tr -d 'v')
if [ "$NODE_VER" -lt 20 ]; then
  echo "Node.js 20+ required. Current: $(node -v)"
  exit 1
fi

# Check / enable pnpm
if ! command -v pnpm >/dev/null 2>&1; then
  echo "Enabling pnpm via corepack..."
  corepack enable || npm install -g pnpm
fi

COMPANY="${1:-My Properties}"
echo "Company / portfolio name: $COMPANY"
echo ""

WORKDIR="${PWD}/openproperty"
if [ -d "$WORKDIR" ]; then
  echo "Directory $WORKDIR already exists. Using it."
else
  echo "Cloning OpenProperty..."
  git clone --depth 1 https://github.com/clawnify/OpenProperty.git "$WORKDIR"
fi

cd "$WORKDIR"
echo "Installing dependencies..."
pnpm install --frozen-lockfile || pnpm install

echo ""
echo "=========================================="
echo "  Ready!"
echo "  Start with:  cd openproperty && pnpm dev"
echo "  Open:        http://localhost:5173"
echo ""
echo "  Sample data (properties, units, vendors)"
echo "  is created on first run. Delete it and"
echo "  add your own."
echo "=========================================="
echo ""
