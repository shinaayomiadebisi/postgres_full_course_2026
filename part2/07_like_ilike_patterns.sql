-- like -> case sensitive pattern match
-- ilike -> case insensitive pattern match
-- % -> means any number of characters
-- _ exactly one char


-- % after wireless means anything can come after it
SELECT name, price
FROM products
WHERE name LIKE 'Wireless%'; 

-- Desk, desk, DESK
SELECT name, category, price
FROM products
WHERE name ILIKE '%desk%'; 


SELECT name, category, description
FROM products
WHERE name ILIKE '%chair%'
  OR description ILIKE '%chair';