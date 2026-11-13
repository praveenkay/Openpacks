CREATE TABLE IF NOT EXISTS properties (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  units INTEGER,
  occupied INTEGER,
  rentDue REAL
);

CREATE TABLE IF NOT EXISTS jobs (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  customer TEXT,
  tech TEXT,
  status TEXT,
  amount REAL
);

CREATE TABLE IF NOT EXISTS pos_items (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  qty INTEGER,
  price REAL,
  stock TEXT
);

CREATE TABLE IF NOT EXISTS invoices (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  number TEXT,
  customer TEXT,
  amount REAL,
  status TEXT
);

CREATE TABLE IF NOT EXISTS customers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  type TEXT,
  contact TEXT,
  balance REAL
);

INSERT INTO properties (name, units, occupied, rentDue) VALUES
  ('Oakwood Apartments', 8, 7, 1450),
  ('Pine Street Duplex', 2, 2, 0),
  ('Maple House', 1, 1, 0);

INSERT INTO jobs (title, customer, tech, status, amount) VALUES
  ('AC repair', '142 Main St', 'Alex', 'In Progress', 320),
  ('Lawn service', '88 Oak Ave', 'Sam', 'Scheduled', 85);

INSERT INTO invoices (number, customer, amount, status) VALUES
  ('INV-1042', 'Green Lawn Co', 890, 'Overdue'),
  ('INV-1041', 'Oakwood', 1450, 'Paid');

INSERT INTO customers (name, type, contact, balance) VALUES
  ('Oakwood Properties', 'Property', 'info@oakwood.example', 0),
  ('Green Lawn Co', 'Field', 'sam@greenlawn.example', 890);
