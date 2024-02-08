CREATE SCHEMA IF NOT EXISTS shopify;
CREATE SCHEMA IF NOT EXISTS mixpanel;

CREATE TABLE IF NOT EXISTS shopify.products (id INT PRIMARY KEY, name VARCHAR, price REAL);

CREATE TABLE IF NOT EXISTS mixpanel.users (id INT PRIMARY KEY, first_name VARCHAR, last_name VARCHAR);
CREATE TABLE IF NOT EXISTS mixpanel.events (id INT PRIMARY KEY, user_id INT, type VARCHAR, event_date DATE);

INSERT INTO shopify.products
VALUES
    (1, 'bracelet', 29.99),
    (2, 'earrings', 49.00),
    (3, 'ring', 14.99)
ON CONFLICT DO NOTHING;

INSERT INTO mixpanel.users
VALUES
    (1, 'John', 'Smith'),
    (2, 'Ariana', 'Grande'),
    (3, 'Mickey', 'Mouse')
ON CONFLICT DO NOTHING;

INSERT INTO mixpanel.events
VALUES
    (1, 1, 'pageview', DATE '2024-01-01'),
    (2, 1, 'product_click', DATE '2024-01-01'),
    (3, 3, 'pageview', DATE '2024-01-10'),
    (4, 2, 'pageview', DATE '2024-02-04'),
    (5, 2, 'product_click', DATE '2024-02-04'),
    (6, 2, 'add_to_cart', DATE '2024-02-05'),
    (7, 2, 'purchase', DATE '2024-02-05')
ON CONFLICT DO NOTHING;