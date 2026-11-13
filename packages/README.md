# OpenPacks Packages — Free, Starter, Managed, Custom

Cross-platform. Use the web installer on any device, or run the scripts on Mac / Windows / Linux.

## Web installer (any device)
Open **[packages/wizard/index.html](wizard/index.html)** in any browser, or the live version once deployed:
**https://praveenkay.github.io/Openpacks/packages/wizard/**

Pick vertical → tier → device → get install steps.

## Tiers

| Tier | What you get | How to start |
|------|----------------|--------------|
| **Free** | Self-host the open-source base | Run `install.sh` or follow wizard |
| **Starter** | Free base + sample data, templates, guided setup ($499–$2,500) | Free install first, then starter config |
| **Managed** | We host, update, backup, support ($49–$249/mo). Works on any device via browser | Request via wizard |
| **Custom** | Integrations, local rules, training (from $1,500) | Scoped project |

## Packages by vertical

- **Property** — `packages/property/` — OpenProperty
- **Field Service** (HVAC, landscaping, handyman) — `packages/field-service/` — OpenFieldService
- **POS / Retail / Vendors** — `packages/pos-retail/` — Dolibarr Docker
- **General SMB** — `packages/general-smb/` — Dolibarr Docker

## Platform notes

- **Web / Mobile browser**: Use the wizard. Full self-host needs a computer or cloud VM. Managed tier gives a URL that works everywhere.
- **Mac**: Terminal + Node 20+ (or Docker). Run `./install.sh`.
- **Windows**: PowerShell or Git Bash + Node 20+ (or Docker). Same commands.
- **Linux**: Same as Mac.

All free packages are self-hosted. Starter / Managed / Custom build on the same bases.
