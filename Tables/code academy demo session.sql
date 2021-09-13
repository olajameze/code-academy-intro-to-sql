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

SELECT a.city, 
count(b.order_id) count_of_orders
FROM CodeAcademy.customer A
inner join CodeAcademy.order B
  on A.customer_id = B.customer_id
GROUP BY A.city
order by count_of_orders DESC;

--@block

 select 
 A.customer_name
 ,Min(B.order_date)
 from CodeAcademy.customer A
 inner join CodeAcademy.order B
 on A.customer_id = B.customer_id
 group by A.customer_name

--@block

select LEFT(o.order_date::text,7) year_month, 
sum (o.total_amount), p.product_name
from CodeAcademy.order o
Left join CodeAcademy.order_line ol
on o.order_id = ol.order_id
Left join CodeAcademy.product p
on p.product_id = ol.product_id
group by year_month, p.product_name;

--@block

select LEFT(customer_name | Date | Order_Amount) year_month, 
sum (o.total_amount), p.product_name
from CodeAcademy.order o
Left join CodeAcademy.customer_id
on o.order_id = ol.order_id
Left join CodeAcademy.order o
on p.product_id = ol.product_id
group by year_month, p.product_name;
