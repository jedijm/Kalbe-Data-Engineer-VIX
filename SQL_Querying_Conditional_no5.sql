-- Customer Orders purchase amount < 100 or order date is not >= 25 Aug 2022 and customer_id > 2001
SELECT *
FROM customer_orders
WHERE (purchase_amount < 100) OR (order_date < "2022-08-25" AND customer_id > 2001);