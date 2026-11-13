# OpenPacks

**Free open-source Business OS packs for small and medium businesses.**

Start completely free by self-hosting mature open-source projects from GitHub. Scale with pre-configured starter packs, managed hosting, and custom solutions at SMB prices — not enterprise retainers.

Fully customizable for any trade, local rules, language, or workflow.

## Live App / Site
The interactive landing page lives in `app/index.html`.  
Enable GitHub Pages on the `main` branch (or `/docs` / root) to host it.

**Repo:** https://github.com/praveenkay/openpacks

## What’s Inside
- `app/index.html` — Interactive landing page with pain points, packs, pricing, competitive landscape, and demo videos.
- `docs/` — Research and packaging blueprints:
  - `Vertical_Pain_Points.md`
  - `Packaging_Blueprints.md`
  - `Competitive_Landscape.md`
- `packages/` — Starter packaging notes and Docker examples for the free bases.

## Free Open-Source Bases
| Vertical              | Recommended Free Base                          | License     | Notes |
|-----------------------|------------------------------------------------|-------------|-------|
| Property / Rentals    | [OpenProperty](https://github.com/clawnify/OpenProperty) | MIT        | Units, leases, rent ledger, work orders |
| Field Service (HVAC, landscaping, handyman) | [OpenFieldPro](https://github.com/niko4244/openfieldpro) or [OpenFieldService](https://github.com/clawnify/OpenFieldService) | AGPL / check | Dispatch, jobs, invoicing |
| Retail / Vendors / POS | Posnic or MyCompany    | AGPL / Apache | Offline-first POS |
| General SMB           | Dolibarr, ERPNext, MyCompany                   | GPL / Apache | Full ERP |
| Restaurants           | URY on ERPNext or Posnic                       | —           | Tables + KDS |

## Pricing Model (intentional SMB rates)
- **Free / Community**: $0 — Self-host any base. Unlimited.
- **Starter Pack**: $499–$2,500 one-time — Pre-configured industry pack + guided setup.
- **Managed**: $49–$249 / month — Hosting, updates, backups, priority support.
- **Custom**: From $1,500 — Modules, integrations, localizations, training.

All lower than typical enterprise custom AI/ERP builds ($7k–$60k+).

## Quick Start (example for a free base)
```bash
# Example: OpenProperty
git clone https://github.com/clawnify/OpenProperty.git
cd OpenProperty
pnpm install
pnpm dev
```

See `docs/Packaging_Blueprints.md` for full free → paid layers per vertical.

## License
Packaging, docs, and landing page: MIT (or your preference).  
Underlying bases retain their original licenses (MIT, AGPL, GPL, Apache, etc.). Always check and comply.

## Contact
Built for SMBs that want control, lower cost, and the ability to start free.
