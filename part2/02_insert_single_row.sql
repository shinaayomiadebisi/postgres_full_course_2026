

INSERT INTO products (
  name,
  category,
  price,
  stock,
  sku,
  description
)
VALUES (
  'Laptop stand',
  'electronics',
  '5000.00',
  23,
  'ELEC-KEY-002',
  'laptop stand description'
);

SELECT * FROM products WHERE sku = 'ELEC-KEY-002';