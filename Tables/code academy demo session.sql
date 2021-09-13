create SCHEMA CodeAcademy;

SELECT *
FROM CodeAcademy.customer
LIMIT 100;

SELECT customerName,
customerName&Email,...
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
 limit 10;

--@block

select
