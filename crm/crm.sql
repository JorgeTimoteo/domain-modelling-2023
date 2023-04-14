-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS salespeople;
DROP TABLE IF EXISTS industries;

-- CREATE TABLES
CREATE TABLE contacts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    phone_number TEXT
    company_id INTEGER
);

CREATE TABLE activities (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    contacts_name TEXT,
    communication TEXT,
    date TEXT,
    notes TEXT,
    salesperson_id INTEGER,
    contact_id
);

CREATE TABLE companies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

CREATE TABLE salespeople (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT
    );

CREATE TABLE industries (
    id integer primary key AUTOINCREMENT,
    name TEXT
);

CREATE TABLE industry_memberships (
    ID integer primary key AUTOINCREMENT,
    company_id INTEGER,
    indsutry_id INTEGER
)