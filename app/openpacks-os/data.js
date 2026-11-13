/**
 * OpenPacks data layer
 * Primary: IndexedDB (no server required)
 * Optional: serverless API (Cloudflare D1 / Turso / any HTTP)
 */
const OpenPacksDB = (() => {
  const DB_NAME = "openpacks";
  const DB_VERSION = 1;
  let db = null;

  const stores = ["properties", "units", "jobs", "pos_items", "invoices", "customers", "settings"];

  function open() {
    return new Promise((resolve, reject) => {
      const req = indexedDB.open(DB_NAME, DB_VERSION);
      req.onupgradeneeded = (e) => {
        const d = e.target.result;
        stores.forEach((s) => {
          if (!d.objectStoreNames.contains(s)) d.createObjectStore(s, { keyPath: "id", autoIncrement: true });
        });
      };
      req.onsuccess = () => { db = req.result; resolve(db); };
      req.onerror = () => reject(req.error);
    });
  }

  async function seed() {
    const count = await countStore("properties");
    if (count > 0) return;
    await put("properties", [
      { name: "Oakwood Apartments", units: 8, occupied: 7, rentDue: 1450 },
      { name: "Pine Street Duplex", units: 2, occupied: 2, rentDue: 0 },
      { name: "Maple House", units: 1, occupied: 1, rentDue: 0 }
    ]);
    await put("jobs", [
      { title: "AC repair", customer: "142 Main St", tech: "Alex", status: "In Progress", amount: 320 },
      { title: "Lawn service", customer: "88 Oak Ave", tech: "Sam", status: "Scheduled", amount: 85 },
      { title: "Handyman — faucet", customer: "15 Elm", tech: "Jordan", status: "Scheduled", amount: 120 }
    ]);
    await put("pos_items", [
      { name: "Coffee blend", qty: 12, price: 8, stock: "OK" },
      { name: "Pastry", qty: 8, price: 4, stock: "Low" },
      { name: "Water", qty: 20, price: 2, stock: "OK" }
    ]);
    await put("invoices", [
      { number: "INV-1042", customer: "Green Lawn Co", amount: 890, status: "Overdue" },
      { number: "INV-1041", customer: "Oakwood", amount: 1450, status: "Paid" },
      { number: "INV-1040", customer: "142 Main", amount: 320, status: "Sent" }
    ]);
    await put("customers", [
      { name: "Oakwood Properties", type: "Property", contact: "info@oakwood.example", balance: 0 },
      { name: "Green Lawn Co", type: "Field", contact: "sam@greenlawn.example", balance: 890 },
      { name: "Market Stall #4", type: "POS", contact: "", balance: 0 }
    ]);
    await put("settings", [{ id: "api", endpoint: "", provider: "indexeddb" }]);
  }

  function countStore(store) {
    return new Promise((resolve) => {
      const tx = db.transaction(store, "readonly");
      const req = tx.objectStore(store).count();
      req.onsuccess = () => resolve(req.result);
      req.onerror = () => resolve(0);
    });
  }

  function put(store, items) {
    return new Promise((resolve, reject) => {
      const tx = db.transaction(store, "readwrite");
      const os = tx.objectStore(store);
      items.forEach((item) => os.put(item));
      tx.oncomplete = () => resolve();
      tx.onerror = () => reject(tx.error);
    });
  }

  function getAll(store) {
    return new Promise((resolve, reject) => {
      const tx = db.transaction(store, "readonly");
      const req = tx.objectStore(store).getAll();
      req.onsuccess = () => resolve(req.result);
      req.onerror = () => reject(req.error);
    });
  }

  async function getApiEndpoint() {
    const s = await getAll("settings");
    const api = s.find((x) => x.id === "api");
    return api?.endpoint || "";
  }

  async function fetchRemote(path) {
    const endpoint = await getApiEndpoint();
    if (!endpoint) return null;
    try {
      const res = await fetch(endpoint.replace(/\/$/, "") + path);
      if (!res.ok) return null;
      return await res.json();
    } catch {
      return null;
    }
  }

  async function load(store, path) {
    const remote = await fetchRemote(path);
    if (remote) return remote;
    return getAll(store);
  }

  return { open, seed, getAll, put, load, getApiEndpoint };
})();
