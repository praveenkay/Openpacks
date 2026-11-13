#!/usr/bin/env bash
# OpenPacks Field Service Pack — Free Install Wizard
# Base: OpenFieldService (lighter) or OpenFieldPro
# Covers: HVAC, landscaping, handyman, trades
set -e

echo ""
echo "=========================================="
echo "  OpenPacks — Field Service Pack (Free)"
echo "  HVAC / Landscaping / Handyman / Trades"
echo "=========================================="
echo ""

if ! command -v node >/dev/null 2>&1; then
  echo "Node.js 20+ required. https://nodejs.org"
  exit 1
fi

if ! command -v pnpm >/dev/null 2>&1; then
  echo "Enabling pnpm..."
  corepack enable || npm install -g pnpm
fi

TYPE="${1:-hvac}"
echo "Vertical type: $TYPE (hvac | landscaping | handyman | general)"
echo ""

# Prefer lighter OpenFieldService for fastest start
REPO="https://github.com/clawnify/OpenFieldService.git"
WORKDIR="${PWD}/openfieldservice"

if [ -d "$WORKDIR" ]; then
  echo "Using existing $WORKDIR"
else
  echo "Cloning OpenFieldService..."
  git clone --depth 1 "$REPO" "$WORKDIR"
fi

cd "$WORKDIR"
echo "Installing..."
pnpm install --frozen-lockfile || pnpm install

echo ""
echo "=========================================="
echo "  Ready for $TYPE"
echo "  Start:  cd openfieldservice && pnpm dev"
echo "  Open:   http://localhost:5173"
echo ""
echo "  Configure service types, price book,"
echo "  and technicians in the app after start."
echo "=========================================="
echo ""
