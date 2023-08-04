USE hw2;
#1
SELECT * FROM hw2.sales;
INSERT INTO sales(id, order_date, count_product) VALUES (1, 2022-01-01, 156);
INSERT INTO sales(id, order_date, count_product) VALUES (2, 2022-01-02, 180);
INSERT INTO sales(id, order_date, count_product) VALUES (3, 2022-01-03, 21);
INSERT INTO sales(id, order_date, count_product) VALUES (4, 2022-01-04, 124);
INSERT INTO sales(id, order_date, count_product) VALUES (5, 2022-01-05, 341);

#2
SELECT id AS "id заказа",
count_product AS "Тип заказа",
IF (count_product < 100, "Маленький заказ",
IF (count_product >= 100 AND count_product < 300, "Средний заказ","Большой заказ")) AS "Тип заказа"
FROM sales;

#3
SELECT * FROM hw2.orders;
INSERT INTO orders(id, employee_id, amount, order_status) VALUES (1, "e03", "15.00", "OPEN");
INSERT INTO orders(id, employee_id, amount, order_status) VALUES (2, "e01", "25.50", "OPEN");
INSERT INTO orders(id, employee_id, amount, order_status) VALUES (3, "e05", "100.70", "CLOSED");
INSERT INTO orders(id, employee_id, amount, order_status) VALUES (4, "e02", "22.18", "OPEN");
INSERT INTO orders(id, employee_id, amount, order_status) VALUES (5, "e04", "9.50", "CANCELLED");


SELECT id "id",
employee_id "employee_id",
amount "amount",
order_status "order_status",
case
	WHEN order_status = "OPEN"
		THEN "Order is in open state"
	WHEN order_status = "CLOSED"
		THEN "Order is closed"
	WHEN order_status = "CANCELLED"
		THEN "Order is cancelled"
END AS "full_order_status"
FROM orders;	


