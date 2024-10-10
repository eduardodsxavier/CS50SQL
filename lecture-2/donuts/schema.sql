CREATE TABLE IF NOT EXISTS ingredients (
    id INTEGER,
    name TEXT,
    price NUMERIC,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS donut_ingredients (
    donut_id INTEGER,
    ingredient_id INTEGER,
    PRIMARY KEY(donut_id, ingredient_id),
    FOREIGN KEY(donut_id) REFERENCES donuts(id),
    FOREIGN KEY(ingredient_id) REFERENCES ingredients(id)
);

CREATE TABLE IF NOT EXISTS donuts (
    id INTEGER,
    name TEXT,
    gluten_free TEXT,
    price NUMERIC,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS order_donuts(
    donut_id INTEGER,
    order_id INTEGER,
    donut_quantity INTEGER,
    PRIMARY KEY(donut_id, order_id),
    FOREIGN KEY(donut_id) REFERENCES donuts(id),
    FOREIGN KEY(order_id) REFERENCES orders(id)
);

CREATE TABLE IF NOT EXISTS orders (
    id INTEGER,
    customer_id INTEGER,
    PRIMARY KEY(id),
    FOREIGN KEY(customer_id) REFERENCES customers(id)
);

CREATE TABLE IF NOT EXISTS customers (
    id INTEGER,
    first_name TEXT,
    last_name TEXT,
    PRIMARY KEY(id)
);
