# Vertical Pain Points Research — Updated Focus

Research compiled Nov 2026. Focus on property management / rental agencies, trades (HVAC, landscaping, handyman), and small vendors. The platform is designed to be customizable for any trade or area via configuration of the open-source bases.

---

## 1. Property Management Companies / Rental Agencies
**Highest-impact problems**
- Fragmented tools across locations (spreadsheets + accounting + email for maintenance). Rent reconciliation alone can take 12–15 hours/week on a 200-unit portfolio.
- Late rent follow-up becomes inconsistent as portfolios grow; arrears age before anyone acts.
- Maintenance requests arrive by text/email with no photos, tracking, or cost allocation (owner vs tenant).
- Owner reporting and month-end close slow down; statements go out late.
- Multi-property complexity: different rules, teams, and data silos. Processes that work at 20 units break around 100–500.
- Tenant experience suffers from multiple apps and missed messages.

**How OpenPacks helps**: OpenProperty (or ERPNext modules) as the single system of record. Free base covers units, leases, rent ledger, work orders. Paid adds automated reminders, tenant portal, bulk operations, owner statements, and multi-location roles. Customizable per market (local tax, notice rules, etc.).

---

## 2. HVAC / Mechanical / Trades Field Service
**Highest-impact problems**
- Manual scheduling without route optimization wastes $3k–$5k/month in fuel and lost productivity on mid-size teams.
- Paper tickets and delayed invoicing: jobs finish but invoices go out days later. Unbilled parts and labor common.
- Technicians arrive without parts or job history → second visits and low first-time fix rates (~74% industry average).
- Dispatchers spend ~15 hours/week on phone coordination. Overloaded schedules cause rushed jobs and callbacks.
- Communication gaps (no real-time ETA or status) drive negative reviews.
- Inventory of parts is invisible until a tech is on site.

**How OpenPacks helps**: OpenFieldPro (or OCA Field Service / ERPNext) provides dispatch board, work orders, mobile completion, and invoicing. Free base covers the core. Paid adds GPS, parts inventory, same-day invoicing, “On My Way” texts, and skill matching. Fully customizable for HVAC, plumbing, electrical, etc. via price books and workflows.

---

## 3. Landscaping / Lawn Care
**Highest-impact problems**
- Scheduling chaos across crews; routes not optimized → wasted drive time (can cost hundreds per crew per month).
- Invoicing delayed until paperwork returns to the office (days or weeks). Cash flow suffers on recurring work.
- Recurring contracts (weekly mowing) get missed or inconsistently billed.
- Job costing is manual; crews use paper timesheets. Weather changes force last-minute re-routes with poor communication.
- Scattered customer data and estimates.

**How OpenPacks helps**: Same field-service base (OpenFieldPro or similar) configured for recurring routes, crew scheduling, and auto-invoicing on job completion. Free base handles jobs and invoices. Paid adds route sequencing, recurring billing, photo proof, and weather-aware adjustments. Customizable for any outdoor service.

---

## 4. Handyman / Small Multi-Trade Service
**Highest-impact problems**
- Admin drag on small jobs (<$400, <90 min): quoting, scheduling, and invoicing take longer than the work.
- Inconsistent pricing and missed materials markup. Scope creep (“while you’re here”) never gets billed.
- Same-day invoicing is rare; cash flow suffers. Double bookings and no customer updates.
- Multiple disconnected tools (notebook + spreadsheet + text).

**How OpenPacks helps**: Lightweight field-service configuration of OpenFieldPro or Dolibarr/MyCompany. Fast mobile quotes, price book, drag-and-drop calendar, and on-site invoicing. Free base is enough for solo operators. Paid adds templates, deposits, and client portal. Highly customizable for any small service trade.

---

## 5. Small Vendors (Food Trucks, Market Stalls, Pop-up Shops)
**Highest-impact problems**
- Offline-first requirement (poor connectivity at markets/festivals).
- Tight space and need for fast checkout.
- Inventory of perishables: stockouts or waste from poor tracking. Unit conversions (case vs unit, weight).
- Limited real-time visibility into what’s selling.

**How OpenPacks helps**: Posnic or MyCompany POS (offline-first). Free self-host covers catalog, checkout, basic inventory. Paid adds offline sync, low-stock alerts, multi-location or multi-event reporting, and payment integration. Customizable product lists and reports for any vendor type.

---

## 6. Retail / Shops (retained)
Stockouts discovered at checkout, disconnected systems, manual counts. Addressed via Posnic/MyCompany real-time inventory.

## 7. Restaurants (retained)
Table and kitchen flow. Addressed via URY/Posnic KDS and table management.

## 8. General SMB (retained)
Spreadsheet invoicing and weak reporting. Addressed via Dolibarr/ERPNext/MyCompany.

---

## Customizable for Any Area
The core idea is not a fixed set of verticals. It is a small number of solid open-source bases that can be packaged and configured for any trade or geography:

- **Field / Service work** (HVAC, landscaping, handyman, cleaning, pest control, etc.) → OpenFieldPro or ERPNext + field modules.
- **Property / Rentals** → OpenProperty or similar.
- **Retail / Point of Sale / Vendors** → Posnic, MyCompany, or Dolibarr.
- **General operations** → Dolibarr, ERPNext, or MyCompany.

Industry packs supply sample data, price books, workflows, reports, and localizations. Everything remains self-hostable and free to start. New areas are added by configuring an existing base rather than building from scratch.