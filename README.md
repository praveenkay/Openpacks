# OpenPacks

**Free open-source Business OS packs for small and medium businesses.**

Start completely free by self-hosting mature open-source projects from GitHub. Scale with pre-configured starter packs, managed hosting, and custom solutions at SMB prices — not enterprise retainers.

Fully customizable for any trade, local rules, language, or workflow.

**Live site:** https://praveenkay.github.io/Openpacks/

---

## What’s on the live site
The interactive landing page (`index.html` at the root, also in `app/index.html`) includes:

- **Pain Points** — Late rent & maintenance chaos, scheduling waste, route chaos, admin longer than the job, offline checkout issues, stockouts, table/kitchen blindness, spreadsheet invoicing.
- **Customizable for Any Area** — Field & service work, property & rentals, retail/vendors/POS, general operations. Same bases can be configured for any trade or local rules.
- **Pack Demos** — Short concept videos of Property OS, Field Service OS, and Vendor/POS OS.
- **Industry Packs** — Property, HVAC/trades, landscaping, handyman, small vendors, retail, restaurants, general SMB.
- **Pricing** — Free self-host, Starter Packs ($499–$2,500), Managed ($49–$249/mo), Custom from $1,500.
- **Blueprints** — Free base → paid enhancements for each vertical.
- **Compare / Competitive Landscape** — vs AppFolio, Buildium, Jobber, Housecall Pro, custom AI builds.

## Repository structure
```
├── index.html                  # Live site (GitHub Pages root)
├── app/
│   ├── index.html              # Same app (source)
│   ├── demo-property.mp4       # Property OS demo
│   ├── demo-field.mp4          # Field service demo
│   └── demo-pos.mp4            # Vendor / POS demo
├── docs/
│   ├── Vertical_Pain_Points.md
│   ├── Packaging_Blueprints.md
│   └── Competitive_Landscape.md
└── packages/
    └── README.md               # Starter packaging & Docker notes
```

## Free Open-Source Bases
| Vertical | Recommended Free Base | URL | License |
|----------|-----------------------|-----|---------|
| Property / Rentals | OpenProperty | https://github.com/clawnify/OpenProperty | MIT |
| Field Service (HVAC, landscaping, handyman, etc.) | OpenFieldPro | https://github.com/niko4244/openfieldpro | AGPL |
| Field Service (lighter) | OpenFieldService | https://github.com/clawnify/OpenFieldService | check repo |
| Retail / Vendors / POS | Posnic or MyCompany | search GitHub | AGPL / Apache |
| General SMB | Dolibarr, ERPNext, MyCompany | official sites / GitHub | GPL / Apache |
| Restaurants | URY on ERPNext or Posnic | — | — |

## Pricing Model
- **Free / Community**: $0 — Self-host any base. Unlimited.
- **Starter Pack**: $499–$2,500 one-time — Pre-configured industry pack + guided setup + sample data.
- **Managed**: $49–$249 / month — Hosting, updates, backups, priority support.
- **Custom**: From $1,500 — Modules, integrations, localizations, training.

All far below typical enterprise custom AI/ERP builds ($7k–$60k+).

## Quick Start (example free base)
```bash
# Example: OpenProperty
git clone https://github.com/clawnify/OpenProperty.git
cd OpenProperty
pnpm install
pnpm dev
```

See `docs/Packaging_Blueprints.md` for full free → paid layers per vertical and `packages/README.md` for Docker notes.

## License
Packaging, docs, and landing page: MIT.  
Underlying bases retain their original licenses (MIT, AGPL, GPL, Apache, etc.). Always check and comply.

Built for SMBs that want control, lower cost, and the ability to start free.
