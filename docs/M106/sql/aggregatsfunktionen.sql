-- Tabelle: Bestellungen (order_id, customer_id, product, price, quantity, order_date)

-- 1.
SELECT MAX(price) FROM Bestellungen;

-- 2.
SELECT MIN(price) FROM Bestellungen;

-- 3.
SELECT AVG(price) FROM Bestellungen;

-- 4.
SELECT SUM(price) FROM Bestellungen;

-- 5.
SELECT COUNT(*) FROM Bestellungen;

-- 6.
SELECT COUNT(*) FROM Bestellungen WHERE quantity > 3;

-- 7.
SELECT AVG(price) FROM Bestellungen WHERE quantity > 2;

-- 8.
SELECT MAX(price) FROM Bestellungen WHERE quantity > 5;

-- 9.
SELECT SUM(price) FROM Bestellungen WHERE price > 50;

-- 10.
SELECT COUNT(*) FROM Bestellungen WHERE order_date > '2024-01-01';

-- 11.
SELECT customer_id, SUM(price * quantity) AS Gesamtumsatz FROM Bestellungen GROUP BY customer_id;

-- 12.
SELECT customer_id, COUNT(*) AS Anzahl_Bestellungen FROM Bestellungen GROUP BY customer_id;

-- 13.
SELECT product, AVG(price) FROM Bestellungen GROUP BY product;

-- 14.
SELECT product, MAX(price) FROM Bestellungen GROUP BY product;

-- 15.
SELECT product, SUM(quantity) FROM Bestellungen GROUP BY product;

-- 16.
SELECT customer_id FROM Bestellungen GROUP BY customer_id HAVING COUNT(*) > 5;

-- 17.
SELECT product, SUM(price * quantity) AS Gesamtumsatz FROM Bestellungen GROUP BY product;

-- 18.
SELECT product FROM Bestellungen GROUP BY product ORDER BY AVG(price) DESC LIMIT 1;

-- 19.
SELECT customer_id, AVG(quantity) FROM Bestellungen GROUP BY customer_id HAVING COUNT(*) > 3;

-- 20.
SELECT order_date, SUM(price * quantity) AS Tagesumsatz FROM Bestellungen GROUP BY order_date;