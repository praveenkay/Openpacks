# OpenPacks Business OS

Modular business suite. Data layer uses IndexedDB by default (no server). Optional serverless API (Cloudflare D1 or Turso).

## Features
- Dashboard, Property, Field Service, POS, Invoices, Customers
- **Packages** panel — links to free installers (OpenProperty, OpenFieldService, Dolibarr)
- **Modules** — toggle what appears
- Serverless endpoint field — paste a Worker URL to switch from IndexedDB to D1/Turso

## Run
Open `index.html` or visit:
**https://praveenkay.github.io/Openpacks/app/openpacks-os/**

## Serverless
See `serverless/` in the repo for a Cloudflare Worker + D1 example.
