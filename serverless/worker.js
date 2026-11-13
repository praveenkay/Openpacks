// OpenPacks serverless API (Cloudflare Worker example)
// Deploy with wrangler. Uses D1 (SQLite) — no traditional database server.

export default {
  async fetch(request, env) {
    const url = new URL(request.url);
    const path = url.pathname;

    if (path === "/api/health") {
      return json({ ok: true, provider: "d1" });
    }
    if (path === "/api/properties") {
      const { results } = await env.DB.prepare("SELECT * FROM properties").all();
      return json(results);
    }
    if (path === "/api/jobs") {
      const { results } = await env.DB.prepare("SELECT * FROM jobs").all();
      return json(results);
    }
    if (path === "/api/invoices") {
      const { results } = await env.DB.prepare("SELECT * FROM invoices").all();
      return json(results);
    }
    if (path === "/api/customers") {
      const { results } = await env.DB.prepare("SELECT * FROM customers").all();
      return json(results);
    }
    if (path === "/api/pos") {
      const { results } = await env.DB.prepare("SELECT * FROM pos_items").all();
      return json(results);
    }

    return json({ error: "not found" }, 404);
  }
};

function json(data, status = 200) {
  return new Response(JSON.stringify(data), {
    status,
    headers: { "content-type": "application/json", "access-control-allow-origin": "*" }
  });
}
