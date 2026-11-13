# OpenPacks Free Packages

Few-click free installs for each vertical. Start with these, then move to Starter / Managed / Custom when you need more.

## Quick start

```bash
# Property
cd packages/property && chmod +x install.sh && ./install.sh "My Properties"

# Field Service (HVAC / Landscaping / Handyman)
cd packages/field-service && chmod +x install.sh && ./install.sh hvac

# POS / Retail / Vendors (Docker)
cd packages/pos-retail && chmod +x install.sh && ./install.sh "My Shop" 8080

# General SMB (Docker)
cd packages/general-smb && chmod +x install.sh && ./install.sh "My Business" 8081
```

## Packages

| Package | Verticals | Base | Install |
|---------|-----------|------|---------|
| `property/` | Property managers, rental agencies | OpenProperty (MIT) | Node + pnpm |
| `field-service/` | HVAC, landscaping, handyman, trades | OpenFieldService | Node + pnpm |
| `pos-retail/` | Shops, vendors, food trucks, markets | Dolibarr (Docker) | Docker |
| `general-smb/` | Any small business | Dolibarr (Docker) | Docker |

## How the wizards work

1. Check prerequisites (Node or Docker).
2. Clone or generate config with your company name.
3. Install dependencies or start containers.
4. Print the URL and login.

Sample / demo data is included where the base supports it. Change the default admin password after first login on Docker packs.

## Next layers

- **Starter Pack** ($499–$2,500): Pre-configured price books, sample data, guided setup.
- **Managed** ($49–$249/mo): We host and update it.
- **Custom**: Integrations, local rules, training.

See `docs/Packaging_Blueprints.md` for full free → paid details.
