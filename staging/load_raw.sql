-- Cria as tabelas raw a partir dos CSVs da Olist.
-- Rodar com:  duckdb olist.duckdb -init staging/load_raw.sql
-- CREATE OR REPLACE = pode rodar quantas vezes quiser, sem erro de "já existe".

CREATE OR REPLACE TABLE customers AS
SELECT * FROM read_csv_auto('data/raw/olist_customers_dataset.csv');

CREATE OR REPLACE TABLE orders AS
SELECT * FROM read_csv_auto('data/raw/olist_orders_dataset.csv');

CREATE OR REPLACE TABLE order_items AS
SELECT * FROM read_csv_auto('data/raw/olist_order_items_dataset.csv');

CREATE OR REPLACE TABLE payments AS
SELECT * FROM read_csv_auto('data/raw/olist_order_payments_dataset.csv');

-- Mostra as tabelas com a contagem de linhas
SELECT 'customers'   AS tabela, COUNT(*) AS linhas FROM customers
UNION ALL SELECT 'orders',      COUNT(*) FROM orders
UNION ALL SELECT 'order_items', COUNT(*) FROM order_items
UNION ALL SELECT 'payments',    COUNT(*) FROM payments
ORDER BY tabela;
