# Serverless + Database Alternatives

## Recommended: Cloudflare D1 (SQLite at the edge)

- No traditional database server.
- Free tier: 5 GB storage, 5M rows read/day, 100K writes/day.
- Same SQL as OpenProperty / OpenFieldService (SQLite).
- Works with Cloudflare Workers.

### Deploy

```bash
cd serverless
npx wrangler d1 create openpacks
# Copy the database_id into wrangler.toml
npx wrangler d1 execute openpacks --file=schema.sql
npx wrangler deploy
```

Your API will be at `https://openpacks-api.<your-subdomain>.workers.dev`.

## Alternative: Turso / libSQL

- SQLite-compatible, free tier (5 GB, 100 databases).
- HTTP API works from any serverless platform.
- Good if you are not on Cloudflare.

## Alternative: IndexedDB (no server)

- Already built into the OpenPacks OS.
- Data lives in the browser.
- Works offline. No account needed.

## Connect the UI

In the OS app, open **Modules** and set the API endpoint to your Worker URL.
If empty, the app uses IndexedDB automatically.
