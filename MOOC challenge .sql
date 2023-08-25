#Creating database 

CREATE DATABASE book_inventory;

#Using the database I want 

USE book_inventory;

#task 1 


#Creating the table 

CREATE TABLE inventory_management (
book_id INT PRIMARY KEY,
title VARCHAR(50) NOT NULL,
author VARCHAR(50) NOT NULL,
genre VARCHAR(40),
publication_year YEAR, 
price DECIMAL(10,2)
);

#Inserting values 
INSERT INTO inventory_management 
VALUES
(1,"Shatter Me", "Tahereh Mafi", "Dystopian", 2011, 3.99),
(2,"It ends with us", "Colleen Hoover","Romance", 2016, 5.00),
(3,"A court of thorns and roses", "Sarah J Maas", "Fantasy", 2015, 7.60),
(4,"Harry Potter", "J.K Rowling", "Fantasy", 1997, 5.50),
(5,"The family upstairs", "Lisa Jewell", "Thriller", 2019, 5.50),
(6,"Where the crawdads sing", "Delia Ownes", "Mystery", 2018, 4.50),
(7,"The silent patient", "Alex Michaelides", "Thriller", 2019, 6.99),
(8,"Fourth wing", "Rebecca Yarros", "Fantasy", 2023, 10.00);
 
#checking the table to see the values 
SELECT * FROM inventory_management;

#Task 2

#store customers table 

CREATE TABLE customers (
customer_id INT PRIMARY KEY,
full_name VARCHAR(60) NOT NULL,
email VARCHAR(200),
phone_no VARCHAR(20),
chapter_chaser BOOLEAN
);

INSERT INTO customers (customer_id, full_name, email, phone_no, chapter_chaser)
VALUES
    (1, 'Alice Johnson', 'alice@example.com', '123-456-7890', true),
    (2, 'Bob Smith', 'bob@example.com', '987-654-3210', false),
    (3, 'Carol Williams', 'carol@example.com', '555-123-4567', true),
    (4, 'David Brown', 'david@example.com', '888-999-0000', false),
    (5, 'Eve Davis', 'eve@example.com', '222-333-4444', true),
    (6, 'Frank Taylor', 'frank@example.com', '777-888-9999', true),
    (7, 'Grace Martin', 'grace@example.com', '444-555-6666', false),
    (8, 'Henry Jackson', 'henry@example.com', '111-222-3333', true);
 
 #Checking table 
 
 SELECT*FROM customers;


#Task 3 

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount_paid DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders (order_id, customer_id, order_date, total_amount_paid)
VALUES
    (1, 1, '2023-08-22', 9.98),
    (2, 3, '2023-08-21', 15.60),
    (3, 5, '2023-08-20', 10.50),
    (4, 2, '2023-08-19', 5.00),
    (5, 4, '2023-08-18', 7.99);
  
  #cheking table
    SELECT*FROM orders;


