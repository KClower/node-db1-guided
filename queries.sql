SELECT * FROM employees;

select firstname, lastname, employeeid
from employees;

select customername, city, country from customers;

select customername, city, country
from customers
where country = 'France';

select country, city, customername
from customers
order by country, city;

select * from products
order by price desc;

select * 
from products
order by price
limit 5;

insert into shippers (shippername, phone)
values ('Lambda Shipping', '(123) 555-1212');

-- DON'T FORGET THE WHERE, RUN A SELECT FIRST TO MAKE SURE YOU ARE TARGETING THE RIGHT RECORDS 
--delete from [shippers]
--where shipperid = 4;
delete from [shippers]
where shipperid = 4;

-- DON'T FORGET THE WHERE, RUN A SELECT FIRST TO MAKE SURE YOU ARE TARGETING THE RIGHT RECORDS
update shippers
set phone = '(321) 555 1212', shippername = 'LS Parcel'
where shipperid = 5;

