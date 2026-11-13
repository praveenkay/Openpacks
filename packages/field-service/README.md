# Field Service Pack (Free)

**Base:** [OpenFieldService](https://github.com/clawnify/OpenFieldService) (lighter, SQLite)  
**Alternative:** [OpenFieldPro](https://github.com/niko4244/openfieldpro) (more complete, Postgres)

Covers HVAC, landscaping, handyman, plumbing, electrical, cleaning, pest, and other trades.

## Install

```bash
chmod +x install.sh
./install.sh hvac
# or: landscaping | handyman | general
```

```bash
git clone https://github.com/clawnify/OpenFieldService.git
cd OpenFieldService
pnpm install
pnpm dev
```

Open http://localhost:5173.

## What you get
- Customers & jobs
- Weekly schedule / dispatch
- Work orders
- Invoicing
- Materials
- Technician assignment

## Vertical notes
- **HVAC / Trades:** Add price book items (service call, repair, install) and skill tags.
- **Landscaping:** Use recurring job types and route notes.
- **Handyman:** Keep it light — fast quotes and on-site invoices.

## Next (Starter / Paid)
GPS / route helpers, same-day invoicing, “On My Way” texts, photo proof, parts inventory.
