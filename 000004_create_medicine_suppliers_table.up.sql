CREATE TABLE medicine_suppliers (
    id SERIAL PRIMARY KEY,
    medicine_id INT NOT NULL,
    supplier_id INT NOT NULL,
    unit_cost FLOAT,
    lead_time INT,
    is_preferred BOOLEAN,

    CONSTRAINT fk_medicine
        FOREIGN KEY(medicine_id)
        REFERENCES medicines(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_supplier
        FOREIGN KEY(supplier_id)
        REFERENCES suppliers(id)
        ON DELETE CASCADE
);