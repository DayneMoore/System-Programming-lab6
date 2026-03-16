CREATE TABLE medicines (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    category TEXT,
    quantity INT NOT NULL,
    price FLOAT,
    expiry_date DATE,
    low_stock_limit INT
);