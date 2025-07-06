CREATE DATABASE SupermarketDB;
GO


-- Switch to the database
USE SupermarketDB;
GO

-- Create the Products table
CREATE TABLE Products (
  product_id INT PRIMARY KEY,
  name VARCHAR(100),
  category VARCHAR(50),
  price DECIMAL(10,2)
);

-- Create the Customers table
CREATE TABLE Customers (
  customer_id INT PRIMARY KEY
);

-- Create the Sales table
CREATE TABLE Sales (
  sale_id INT PRIMARY KEY,
  customer_id INT,
  product_id INT,
  quantity INT,
  sale_date DATE,
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Insert data into Products
INSERT INTO Products VALUES
(1, 'Milk', 'Dairy', 1.50),
(2, 'Bread', 'Bakery', 1.00),
(3, 'Eggs', 'Dairy', 2.00),
(4, 'Rice', 'Grains', 3.50),
(5, 'Apple', 'Fruits', 0.75);

-- Insert data into Customers
INSERT INTO Customers VALUES
(1),
(2),
(3),
(4);

-- Insert data into Sales
INSERT INTO Sales VALUES
(1, 1, 1, 2, '2025-06-01'),
(2, 2, 2, 1, '2025-06-01'),
(3, 3, 3, 1, '2025-06-02'),
(4, 1, 4, 3, '2025-06-03'),
(5, 4, 2, 2, '2025-06-03'),
(6, 3, 5, 5, '2025-06-04');
