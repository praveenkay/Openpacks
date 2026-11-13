#!/usr/bin/env bash
# OpenPacks master installer — pick a vertical
set -e
echo ""
echo "OpenPacks Free Package Installer"
echo "================================"
echo "1) Property / Rentals"
echo "2) Field Service (HVAC, Landscaping, Handyman)"
echo "3) POS / Retail / Vendors"
echo "4) General SMB"
echo ""
read -p "Choose [1-4]: " choice
read -p "Company / business name: " name

case $choice in
  1) cd property && ./install.sh "$name" ;;
  2) cd field-service && ./install.sh general ;;
  3) cd pos-retail && ./install.sh "$name" 8080 ;;
  4) cd general-smb && ./install.sh "$name" 8081 ;;
  *) echo "Invalid choice"; exit 1 ;;
esac
