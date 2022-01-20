DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS employees;

-- CREATE TABLES
CREATE TABLE contacts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  phone_number INTEGER,
  email TEXT,
  companies_id INTEGER
);
CREATE TABLE activities (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  notes TEXT,
  date TEXT,
  contacts_id INTEGER,
  employees_id INTEGER,
  companies_id INTEGER,
  industries_id INTEGER
);
CREATE TABLE companies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  company_name TEXT,
);
CREATE TABLE employees (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT
);
CREATE TABLE industries (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  industry_name TEXT
);
CREATE TABLE industry_memberships (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  companies_id INTEGER
  industries_id INTEGER
);