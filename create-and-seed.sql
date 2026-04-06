-- create-and-seed.sql
-- Design and seed a table for ONE of the following scenarios:
--
--   A. A restaurant menu
--      Suggested columns: name, cuisine, price, vegetarian, calories, available
--
--   B. A music library
--      Suggested columns: title, artist, genre, year, duration_seconds, streams
--
--   C. A gym class schedule
--      Suggested columns: class_name, instructor, day_of_week, capacity, enrolled, difficulty
--
--   D. A movie collection
--      Suggested columns: title, director, genre, year, runtime_minutes, rating
--
--   E. A bookstore inventory
--      Suggested columns: title, author, genre, price, pages, in_stock
--
-- Requirements:
--   [ ] Creates a new database with an appropriate name
--   [ ] Connects to the database after creating it
--   [ ] Creates a new table with an appropriate name
--   [ ] The seed file can be executed multiple times without causing errors related to the database and/or table already existing
--   [ ] The table has a primary key column with unique, auto-generated, and sequential values
--   [ ] The table has at least 5 additional columns beyond the primary key
--   [ ] The table has at least 3 different data types used
--   [ ] The table has at least one `NOT NULL` constraint
--   [ ] The table has at least one `DEFAULT` value
--   [ ] The table has at least one `UNIQUE` constraint
--   [ ] The table has at least 8 rows of seed data inserted

-- ============================================================
-- Step 1: Create the database
-- ============================================================
DROP DATABASE IF EXISTS products_db;
CREATE DATABASE products_db;
\c products_db

-- ============================================================
-- Step 2: Create the table
-- ============================================================
DROP TABLE IF EXISTS products;

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name TEXT NOT NULL UNIQUE,
    product_type TEXT NOT NULL,
    expiration_date DATE NOT NULL,
    price NUMERIC(5, 2) NOT NULL,

);


-- ============================================================
-- Step 3: Insert seed data (at least 8 rows)
-- ============================================================
