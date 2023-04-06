-- Question 1 --
use `premier_products`;
select * from customer;
select * from order_line;
select * from orders;
select * from part;
select * from sales_rep;

-- Question 2 --
select last_name, first_name, sales_rep_num, city from sales_rep;

-- Question 3 --
select order_num, customer_num from orders;

-- Question 4 --
select * from order_line LIMIT 2;

-- Question 5 --
select * from customer where sales_rep_num=20;

-- Question 6 --
select customer_name, balance, credit_limit from customer where sales_rep_num=20;

-- Question 7 --
select ol.part_num, ol.num_ordered, ol.quoted_price, p.price from order_line ol join part p
on ol.part_num=p.part_num 
where p.price=(ol.num_ordered*ol.quoted_price) and ol.num_ordered=1 and ol.order_num=21617;

-- Question 8 --
select * from orders where order_date between '2010-10-20' and '2010-10-22';

-- Question 9 --
select * from part where part_description like 'D%';
select * from part where part_description like '%er';

-- Question 10 --
select sum(balance) as 'Total Balance' from customer;

-- Question 11 --
select min(balance) as 'Minimum Balance' from customer;

-- Question 12 --
select count(customer_name) as 'Number of Customers' from customer;

-- Question 13 --
select order_num from order_line where quoted_price between 500 and 1000;

-- Question 14 --
select c.customer_name, s.last_name, s.first_name from customer c join sales_rep s
on c.sales_rep_num=s.sales_rep_num;
