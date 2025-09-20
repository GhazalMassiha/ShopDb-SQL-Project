CREATE DATABASE [ShopDb];


USE [ShopDb];


CREATE TABLE Customers (
  Id INT NOT NULL PRIMARY KEY,
  Name VARCHAR(255) NOT NULL
);

CREATE TABLE Categories (
  Id INT NOT NULL PRIMARY KEY,
  Name VARCHAR(50) NOT NULL
);

CREATE TABLE Products (
  Id INT NOT NULL PRIMARY KEY,
  Name VARCHAR(50) NOT NULL,
  CategoryId INT NOT NULL,
  Price INT,
  FOREIGN KEY (CategoryId) REFERENCES Categories(Id)
);

CREATE TABLE Orders (
  Id INT NOT NULL PRIMARY KEY,
  CustomerId INT NOT NULL,
  ProductId INT NOT NULL,
  OrderDate DATE,
  TotalAmount INT,
  FOREIGN KEY (CustomerId) REFERENCES Customers(Id),
  FOREIGN KEY (ProductId) REFERENCES Products(Id)
);


INSERT INTO Customers(Id, Name) 
VALUES 
  (1, 'Emily'), 
  (2, 'James'), 
  (3, 'Olivia'), 
  (4, 'Benjamin'), 
  (5, 'Sophia');

INSERT INTO Categories (Id, Name) 
VALUES 
  (1, 'Electronics'), 
  (2, 'Accessories'), 
  (3, 'Peripherals'), 
  (4, 'Clothing');

INSERT INTO Products (Id, Name, CategoryId, Price)
VALUES 
  (1, 'Laptop', 1, 1200), 
  (2, 'Smartphone', 1, 800), 
  (3, 'Headphones', 2, 50), 
  (4, 'Camera', 2, 500), 
  (5, 'Printer', 3, 300), 
  (6, 'Tablet', 1, 400), 
  (7, 'Keyboard', 3, 20), 
  (8, 'Monitor', 1, 250), 
  (9, 'Mouse', 3, 15), 
  (10, 'Speakers', 2, 100);

INSERT INTO Orders (Id, CustomerId, ProductId, OrderDate, TotalAmount)
VALUES 
  (1, 1, 1, '2023-04-11', 500), 
  (2, 2, 2, '2024-01-10', 1200), 
  (3, 4, 5, '2023-11-28', 300), 
  (4, 1, 4, '2023-09-08', 150), 
  (5, 5, 3, '2024-02-22', 700), 
  (6, 3, 7, '2023-02-26', 450), 
  (7, 1, 1, '2023-05-03', 40), 
  (8, 4, 10, '2023-08-12', 200), 
  (9, 3, 10, '2023-02-19', 30), 
  (10, 2, 2, '2023-02-09', 80);