-- Delete old tables if they already exist so we start fresh
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS items;

-- Table 1: Store student and admin accounts
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    role TEXT DEFAULT 'student'
);

-- Table 2: Store lost and found items
CREATE TABLE items (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    category TEXT NOT NULL,
    description TEXT NOT NULL,
    date_reported TEXT NOT NULL,
    location TEXT NOT NULL,
    item_type TEXT NOT NULL,
    status TEXT DEFAULT 'Open',
    image_file TEXT,
    contact_info TEXT NOT NULL,
    user_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id)
);