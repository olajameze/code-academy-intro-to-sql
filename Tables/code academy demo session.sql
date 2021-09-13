create SCHEMA CodeAcademy;

--@block

SELECT *
FROM CodeAcademy.customer
LIMIT 100;

--@block

SELECT customer_name,
customerName&Email,
FROM table_name;
ORDER BY column_1 ASC ,column_2 DESC;


--@block

SELECT customer_name, city
FROM CodeAcademy.customer
WHERE city = 'Birmingham';

--@block

SELECT customer_name, city
FROM CodeAcademy.customer
WHERE city LIKE 'B%';

--@block

SELECT 
A.customer_name
,B.total_amount
from CodeAcademy.customer A
inner join CodeAcademy.order B
 on A.customer_id = B.customer_id
 limit 30;

--@block

SELECT "order".order_id, customer.customer_name
FROM CodeAcademy.customer
INNER JOIN CodeAcademy."order" ON "order".customer_id
 = customer.customer_id;

--@block

 SELECT 
A.customer_name
,B.total_amount
from CodeAcademy.customer A
LEFT join CodeAcademy.order B
 on A.customer_id = B.customer_id
 limit 100;

 --@block

 select customer_name
 from CodeAcademy.customer
 where phone_number = '';


--@block

SELECT customer_name, 
aggregate_function('order') 
FROM CodeAcademy 
GROUP BY customer_name;

--@block

 select customer_name
 from CodeAcademy.customer
 where city = customer_name;
