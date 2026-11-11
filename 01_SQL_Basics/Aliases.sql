-- SQL aliases are temporary names assigned to a table or a column for the duration of a single query. They make complex queries easier to read and write without changing the actual names in the database.
-- You typically create an alias using the AS keyword, though it is optional in most SQL databases


-- Types of Aliases
-- 1. Column Aliases. Used to rename a column in the output result set. They are especially helpful for giving clean headings to calculated fields or aggregate functions like SUM() and COUNT()
SELECT first_name AS name, COUNT(order_id) AS total_orders
FROM customers;

-- 2. Table Aliases. Used to give a table a shorter name within a query. They save typing when joining multiple tables and are strictly required when performing a self-join.
SELECT c.first_name, o.order_date
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id;


-- Key Rules and Best Practices

-- • Spaces in Aliases. If an alias contains spaces, enclose it in double quotes ("Total Sales") or square brackets ([Total Sales]), depending on your SQL dialect.
-- • Clause Limitations. Because SQL evaluates the FROM clause first, you can use a table alias anywhere in the query. However, a column alias is created in the SELECT step, meaning you generally cannot reference it in WHERE, GROUP BY, or HAVING clauses. You can use it in an ORDER BY clause.
-- • Descriptive Naming. One point of agreement among developers on Stack Overflow is that generic single-letter aliases like a, b, or c hurt readability. Choose short, meaningful abbreviations like cust for customers or emp for employees instead


-- *** important ***
-- in the above queries , customers and orders is the name of table , and first_name , order_id  , order_date are coloumns name in data table and AS name , AS c , AS o  are Aliases (other name of table and columns to make it more easy to read and understand).




--  if  u want to run this query , u have to run  this first :
create DATABASE sql;
usr DATABASE sql ;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    city VARCHAR(50)
);
INSERT INTO customers VALUES
(1, 'Parul', 'Verma', 'Gurgaon'),
(2, 'Rahul', 'Sharma', 'Delhi'),
(3, 'Priya', 'Singh', 'Mumbai'),
(4, 'Aman', 'Kumar', 'Jaipur'),
(5, 'Neha', 'Gupta', 'Pune'),
(6, 'Rohit', 'Mehta', 'Gurgaon'),
(7, 'Anjali', 'Yadav', 'Delhi'),
(8, 'Karan', 'Malhotra', 'Noida'),
(9, 'Sneha', 'Rao', 'Mumbai'),
(10, 'Arjun', 'Patel', 'Pune');

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO orders VALUES
(101, 1, '2026-01-05', 1500.00),
(102, 2, '2026-01-07', 2500.00),
(103, 3, '2026-01-10', 1200.00),
(104, 1, '2026-01-15', 3000.00),
(105, 4, '2026-01-18', 1800.00),
(106, 5, '2026-01-20', 2200.00),
(107, 6, '2026-01-22', 3500.00),
(108, 7, '2026-01-25', 900.00),
(109, 8, '2026-01-27', 4000.00),
(110, 3, '2026-01-30', 1600.00);