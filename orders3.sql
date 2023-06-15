SELECT * FROM orders.orders;
ALTER TABLE orders
ADD COLUMN payment INT,
ADD price iNT DEFAULT 50;
UPDATE orders
SET payment = RAND()*3;
SELECT * FROM orders;
SELECT name, Manufactorer, payment,
	CASE
		WHEN payment = 1 THEN "Оплатите в магазине"
        WHEN payment = 0 THEN "Можно онлайн"
        ELSE "Под заказ"
	END AS categorie
FROM orders;

