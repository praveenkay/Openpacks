# OpenPacks — Competitive Landscape

Compiled Nov 2026. Focus on direct SaaS competitors in property management and field service (HVAC, landscaping, handyman, trades), plus open-source bases that can undercut them.

## 1. Property Management / Rental Agencies

**Paid SaaS leaders**
- **AppFolio**: Quote-based, typically ~$1.40–$1.49/unit/mo with 50-unit minimum (~$280+ floor). Strong for larger portfolios, AI features (Realm-X), deeper accounting. Higher tiers for API.
- **Buildium**: Published pricing from ~$62–$65/mo (Essential). No unit minimum stated. Good for smaller managers and associations. Open API on Premium. 14-day trial.
- **DoorLoop**: From ~$69/mo (annual). Flat plans with unit caps on lower tiers.
- **Yardi Breeze**: From ~$1/unit with monthly minimums (~$100).
- **TenantCloud / Avail / PayHOA**: Lower-cost or freemium entry points for very small portfolios.

**Open-source alternatives (free self-host)**
- **OpenProperty** (clawnify/OpenProperty, MIT): Units, tenants, leases, monthly rent ledger with bank matching, late-rent reminders, maintenance work orders. Fast local start (pnpm). Ideal free base for OpenPacks Property pack.
- **MicroRealEstate**: Self-hosted leases, rents, receipts (SUL license — free for private landlords up to 5 units).
- **Parcelis**: Open-source platform for landlords and small operators (AGPL).
- **OpenKos**: Laravel + React, properties/units/leases/invoices/maintenance, plugin architecture (strong for multi-unit / boarding-house style).
- Others: ORPM (classic PHP), various short-term rental PMS (OpenStay, LibreProperty — more STR-focused).

**OpenPacks positioning**: Free OpenProperty (or ERPNext modules) covers core units/leases/rent/work orders. Paid layers add tenant portal, automated reminders, owner statements, multi-location roles, and local rules. Undercuts $60+/mo SaaS while remaining customizable.

## 2. Field Service (HVAC, Landscaping, Handyman, Trades)

**Paid SaaS leaders (2026 pricing snapshots)**
- **Jobber**: From ~$29/mo annual (Core, 1 user) or $49 month-to-month. Connect/Grow/Plus with team bands. Extra users ~$29. Strong for solo and small crews; QuickBooks on higher tiers.
- **Housecall Pro**: From ~$59/mo annual (Basic, 1 user) or $79 monthly. Essentials (~5 users) ~$149–$189; Max (~8 users) ~$299–$329 + $35/extra. Good for trades wanting routes, GPS, flat-rate, service plans.
- **QuoteIQ**: From ~$30/mo, often no per-user fees, AI estimating included on plans.
- **ServiceM8**: Free tier (limited jobs), then job-based pricing; unlimited users on paid.
- **ServiceTitan / FieldEdge**: Much higher (often quote-based, hundreds per tech) — enterprise/mid-market.

Typical 5-person crew: Jobber Connect ~$149–$199/mo, Housecall Pro Essentials ~$149–$189/mo (annual vs monthly varies). Seat math favors one or the other depending on exact team size and needed features (QB sync, texting, routes).

**Open-source alternatives (free self-host)**
- **OpenFieldService** (clawnify/OpenFieldService): Scheduling, weekly calendar, jobs, customers, invoicing, materials, technician dispatch. Vertical-agnostic (HVAC, plumbing, landscaping, cleaning, pest, etc.). SQLite, zero cloud deps.
- **OpenFieldPro** (niko4244/openfieldpro, AGPL): CRM, customers/properties/equipment, scheduling/dispatch, work orders, estimates, invoicing, payments, documents, service plans, technician mobile with offline foundations. Next.js + Fastify + PostgreSQL. More complete lead-to-payment.
- **OCA Field Service** (Odoo modules, AGPL): Mature field-service modules on Odoo Community.
- **ERPNext / Dolibarr**: Full ERP with field/intervention modules — broader but configurable.
- Others: FlexDesk, FieldPro POC, Geoclarity (older), various HVAC-specific POCs.

**OpenPacks positioning**: Free OpenFieldPro or OpenFieldService (or ERPNext/OCA) covers jobs, scheduling, work orders, invoicing. Paid adds GPS/route helpers, parts inventory, same-day invoicing, “On My Way” texts, skill matching, recurring billing (landscaping), photo proof. Undercuts $30–200+/mo SaaS with no per-user tax.

## 3. Retail / Vendors / Restaurants / General SMB

- **Posnic** (AGPL, offline-first POS): Strong free base for shops, food trucks, markets.
- **MyCompany** (Apache 2.0): Full ERP + POS.
- **Dolibarr / ERPNext**: Mature general SMB ERPs.
- **URY** (ERPNext restaurant modules): Tables, KDS, menu.

Paid competitors (Square, Toast, Clover, etc.) charge processing + monthly fees. OpenPacks free self-host + starter packs undercuts.

## 4. Custom AI / Enterprise Builds

- **Afrex AI** and similar: Custom software/AI systems starting ~$7,500–$10,000+ (reviews, operational platforms, full builds). OpenPacks starter packs ($499–$2,500) and managed ($49–$249/mo) target the same pain points at SMB prices.

## Summary Positioning

| Category              | Typical Paid SaaS          | Open-Source Free Base          | OpenPacks Advantage                  |
|-----------------------|----------------------------|--------------------------------|--------------------------------------|
| Property              | $60+/mo or per-unit        | OpenProperty, MicroRealEstate  | Free core + paid portal/automation   |
| Field Service         | $30–200+/mo (per user)     | OpenFieldPro, OpenFieldService | Free core + paid GPS/invoicing/etc.  |
| Retail/Vendors        | Processing + monthly       | Posnic, MyCompany              | Offline-first free + paid sync       |
| Custom AI builds      | $7.5k–$60k+                | Configurable OSS bases         | Starter packs + managed at SMB rates |

All bases remain fully customizable for any trade, local tax/notice rules, language, or workflow. Industry packs supply sample data, price books, and templates.
