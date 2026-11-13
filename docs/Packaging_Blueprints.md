# OpenPacks — Packaging Blueprints

Prioritized by researched pain points (see Vertical_Pain_Points.md). Free bases already cover core needs; paid layers attack the highest-cost problems first. Every pack is a configuration of a small number of mature open-source bases, so the same system can be customized for any trade, location, or local rules.

## Priority Verticals (Free Base → Paid Enhancements)

### 1. Property Management / Rental Agencies (OpenProperty or ERPNext)
**Pain points targeted**: Fragmented tools and 12–15 hrs/week rent reconciliation on larger portfolios; inconsistent late-rent follow-up; maintenance requests by text with no tracking; slow owner statements; multi-property complexity.
**Free Base**
- Properties, units, tenants, leases, rent ledger, maintenance work orders

**Starter Pack ($599–$1,299)**
- Guided setup + sample data for local market
- Late-rent reminder templates
- Basic owner reports and bank matching config

**Paid (high priority)**
- Automated reminders + late-fee rules
- Tenant portal for requests + photos
- Work-order tracking with audit trail
- Owner statements / accounting export
- Multi-location roles and custom local rules (tax, notices)

### 2. HVAC / Mechanical / Trades Field Service (OpenFieldPro or ERPNext Field)
**Pain points targeted**: Manual scheduling without route optimization ($3k–$5k/month waste); paper tickets and delayed invoicing; techs arriving without parts or history; dispatcher time (≈15 hrs/week); low first-time fix rates.
**Free Base**
- Customers, jobs, scheduling, work orders, estimates, invoicing

**Starter Pack ($1,199–$2,499)**
- Dispatch board + mobile-friendly tech workflows
- Price book for common HVAC/plumbing/electrical tasks
- Sample job types and checklists

**Paid (high priority)**
- Same-day / on-site invoicing
- Photo + signature capture
- “On My Way” customer texts
- GPS / live status and route helpers
- Skill-based assignment and parts inventory

### 3. Landscaping / Lawn Care (OpenFieldPro configured for recurring)
**Pain points targeted**: Scheduling chaos and wasted drive time; delayed invoicing on recurring contracts; missed or inconsistent billing; manual job costing; weather-driven re-routes with poor communication.
**Free Base**
- Jobs, crew scheduling, estimates, invoicing (same field-service base)

**Starter Pack ($899–$1,799)**
- Recurring route templates
- Crew calendars and basic job costing
- Sample service catalog (mowing, cleanup, seasonal)

**Paid**
- Route sequencing helpers
- Auto-invoicing on job completion
- Photo proof of work
- Weather-aware notes and client updates

### 4. Handyman / Small Multi-Trade Service (Lightweight OpenFieldPro or Dolibarr/MyCompany)
**Pain points targeted**: Admin time on small jobs exceeds the work itself; inconsistent pricing and missed materials markup; scope creep not billed; rare same-day invoicing; disconnected tools.
**Free Base**
- Fast mobile quotes, calendar, work orders, on-site invoicing

**Starter Pack ($499–$999)**
- Price book and common job templates
- Deposit / simple payment config
- Solo-operator friendly setup

**Paid**
- Client portal and status updates
- Recurring client jobs
- Advanced reporting and multi-crew if needed

### 5. Small Vendors (Food Trucks, Market Stalls, Pop-ups) — Posnic or MyCompany
**Pain points targeted**: Need offline-first at markets; tight space and fast checkout; perishable inventory waste/stockouts; limited real-time visibility.
**Free Base**
- Offline-first catalog, checkout, basic inventory

**Starter Pack ($499–$999)**
- Event / multi-location sample setup
- Low-stock and unit-conversion config
- Receipt branding

**Paid**
- Offline sync improvements
- Multi-event reporting
- Payment integration and alerts

### 6. Retail / Shops (Posnic or MyCompany)
**Pain points targeted**: Stockouts discovered at checkout, disconnected systems, manual counts.
**Free Base**
- Product catalog, barcode, checkout, basic inventory, daily reports

**Starter Pack ($799–$1,499 one-time)**
- Docker / one-command setup
- Sample product data + category structure
- Low-stock alert config

**Managed / Add-ons**
- Real-time multi-channel sync
- Payment terminal integration
- Advanced reports / export to accounting

### 7. Restaurants (URY on ERPNext or Posnic)
**Pain points targeted**: Table status blindness, kitchen ticket chaos, inventory count failures, slow checkout.
**Free Base**
- Tables, menu, dine-in / takeaway, kitchen display basics, offline POS

**Starter Pack ($999–$1,999)**
- Pre-configured restaurant chart + sample menu
- KDS setup with basic station routing
- Staff roles

**Paid Enhancements**
- Live table board
- Better KDS routing + offline
- Simple recipe depletion
- Fast split/merge checkout

### 8. General SMB (Dolibarr / ERPNext / MyCompany)
**Pain points targeted**: Spreadsheet invoicing, untracked payments, limited reporting.
**Free Base**
- Full ERP: quotes, invoices, CRM, inventory, projects, basic accounting

**Starter Pack ($699–$1,999)**
- Chart of accounts localized
- Module activation + sample data
- User roles

**Paid**
- Payment reminders
- E-invoicing / tax compliance
- Custom reports & dashboards
- Hosting + priority support

## Suggested Overall Pricing Tiers
| Tier | Price | What’s Included |
|------|-------|-----------------|
| Free / Community | $0 | Self-host the open-source base. Unlimited. |
| Starter Pack | $499–$2,500 one-time | Pre-configured industry pack + guided setup + 30 days support |
| Managed | $49–$249 / month | Hosting, updates, backups, priority support |
| Custom | From $1,500 | New modules, integrations, migration, training, localizations |

All prices are intentionally lower than typical enterprise custom AI/ERP builds ($7k–$60k+).

## Customizable for Any Area
The platform is not a fixed list of verticals. It is a small set of solid open-source bases that can be packaged for any trade or geography:
- Field / Service work (HVAC, landscaping, handyman, cleaning, pest control, etc.) → OpenFieldPro or ERPNext + field modules.
- Property / Rentals → OpenProperty or similar.
- Retail / Point of Sale / Vendors → Posnic, MyCompany, or Dolibarr.
- General operations → Dolibarr, ERPNext, or MyCompany.

Industry packs supply sample data, price books, workflows, reports, and localizations (tax rules, language, currency, notice periods). Everything remains self-hostable and free to start. New areas are added by configuring an existing base rather than building from scratch.

## Competitive Positioning (summary)
See Competitive_Landscape.md for details. Typical SaaS: Jobber/Housecall Pro $30–200+/mo, Buildium/AppFolio $60+/mo or per-unit. Custom AI builds $7.5k+. OpenPacks free self-host bases (OpenProperty, OpenFieldPro/OpenFieldService, Posnic, ERPNext/Dolibarr) + starter packs ($499–$2,500) + managed ($49–$249/mo) undercut both while staying customizable.