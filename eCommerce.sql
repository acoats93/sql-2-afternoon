-- make tables

CREATE TABLE users (
	user_id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL
)

CREATE TABLE products (
	product_id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  price INTEGER NOT NULL
)

CREATE TABLE orders (
	order_id SERIAL PRIMARY KEY,
  product_id INTEGER REFERENCES products(product_id)
)

-- insert data

INSERT INTO users (name, email)
VALUES ('Chadwick', 'notatool@yahoo.com'),
				('Kenny', 'rainbowsunshineprincess@gmail.com'),
        ('Geoffrey', 'freshiefresh@sbcglobal.net');

INSERT INTO products (price, name)
VALUES (5.00, 'Hamburger'),
        (1.00, 'Fries'),
        (1.75, 'Milkshake');

INSERT INTO orders (product_id)
VALUES (1),
        (2),
        (3);


-- queries

SELECT * FROM orders
WHERE order_id = 1;

SELECT * FROM orders;

SELECT p.price FROM orders o
INNER JOIN products p ON p.product_id = o.product_id
WHERE order_id = 1;

ALTER TABLE orders
ADD COLUMN user_id INTEGER REFERENCES users(user_id)

SELECT * FROM orders
WHERE user_id = 1;

SELECT COUNT(*) FROM orders
WHERE user_id = 1;

SELECT COUNT(*) FROM orders
WHERE user_id = 2;

SELECT COUNT(*) FROM orders
WHERE user_id = 3;