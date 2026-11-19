CREATE TABLE products (
    product_code  VARCHAR(20)    PRIMARY KEY,
    name          VARCHAR(100)   NOT NULL,
    price         NUMERIC(10,2)  NOT NULL,
    stock         INT            NOT NULL CHECK (stock >= 0)
);
 
CREATE TABLE orders (
    id              SERIAL         PRIMARY KEY,
    order_id        VARCHAR(40)    UNIQUE NOT NULL,
    customer_email  VARCHAR(150)   NOT NULL,
    product_code    VARCHAR(20)    NOT NULL,
    quantity        INT            NOT NULL,
    total_amount    NUMERIC(10,2)  NOT NULL,
    status          VARCHAR(20)    NOT NULL,
    correlation_id  VARCHAR(100),
    created_at      TIMESTAMP      NOT NULL DEFAULT now(),
    updated_at      TIMESTAMP
);
 
INSERT INTO products (product_code, name, price, stock) VALUES
  ('LAPTOP-01',  'Developer Laptop',     75000.00, 10),
  ('MOUSE-01',   'Wireless Mouse',         899.00, 100),
  ('KEYB-01',    'Mechanical Keyboard',   3499.00, 25),
  ('MONITOR-01', '27-inch Monitor',      18999.00, 0);