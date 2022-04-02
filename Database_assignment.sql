-- Print Distinct City from Table Customers and Print Count Distinct City from Table Customers
select distinct City
from customers; 

select count(distinct City)
from customers; 

-- get the least number of quantities and the highest number of quantities bought by the user consider the OrderDetails Table.
SELECT MAX(Quantity) FROM new_schema.order_details;

SELECT min(Quantity) FROM new_schema.order_details;

-- Print the total and an average number of quantities ordered bybusers, consider the OrderDetails Table
SELECT OrderID, sum(Quantity) as total_Quntity_order
FROM new_schema.order_details
group by OrderID 
order by OrderID;

SELECT OrderID, round(avg(Quantity))  as avg_Quntity_order
FROM new_schema.order_details
group by OrderID 
order by OrderID;

SELECT avg(Quantity) FROM new_schema.order_details;

-- Print name of the product which is present at the 5th position till the 15th position from Products table, use LIMIT keyword.
select ProductID, ProductName
from (SELECT * FROM new_schema.products
LIMIT 15) id
where ProductID > 4;

-- Write a SQL query for all the details of the supplier whose name consists of “A” at the second position from the Suppliers table.
SELECT * FROM new_schema.suppliers
where SupplierName Like '_A%';

-- Print the details of the customer who doesn’t stay in the USA and Canada from the Customers table.
SELECT * FROM new_schema.customers
where Country not in ('USA', 'Canada');

-- Print the details of all the orders which were placed between the year 2020 to 2021 also print the same in descending order from the OrderDetails table.
/* NO RECORDS PRESENT IN THE DATABASE FOR Year 2020 and 2021 */
SELECT *
FROM order_details od
inner join orders  os
on od.OrderID = os.OrderID
where os.OrderDate  between 2020-01-01 and 2021-12-31; 


-- Write a query to show the distinct city and their count from the Customers table
select City, Count(City) as City_count
from customers
group by city;

-- Write a query to fetch details of all employees excluding the employees with first names, “Sanjay” and “Sonia” from the Employees table.
ALTER TABLE Employees
RENAME COLUMN LastName TO FirstName,
RENAME COLUMN FirstName To LastName;

select * 
from employees
where  FirstName not in ("Sanjay", "Soniya");


-- Duplicate a table as similar to the Suppliers table and name it as SupplierDetail
CREATE TABLE SupplierDetail AS SELECT * FROM suppliers;

-- Delete customer details whose country is Venezuela and print the rest of the Customer table
DELETE FROM customers
WHERE Country= 'Venezuela';
select *
from customers;





