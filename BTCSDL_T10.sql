CREATE DATABASE QLSP
USE QLSP
CREATE TABLE Suppliers (SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(255) NOT NULL);
CREATE TABLE Products (ProductID int not null primary key,
	ProductName nvarchar(60),
	SupplierID int,
	UnitPrice nvarchar(30),
	UnitInStock nvarchar (30),
	foreign key (SupplierID) REFERENCES Suppliers (SupplierID));

CREATE TABLE Customers (CustomerID INT PRIMARY KEY,
    CompanyName VARCHAR(255) NOT NULL,
    Address TEXT,
    City VARCHAR(100),
    Region VARCHAR(100),
    Country VARCHAR(100));
CREATE TABLE Employees (EmployeeID INT PRIMARY KEY,
    LastName VARCHAR(100) NOT NULL,
    FirstName VARCHAR(100) NOT NULL,
    BirthDate DATE,
    City VARCHAR(100));
CREATE TABLE Orders (OrderID INT PRIMARY KEY,
    CustomerID INT,
    EmployeeID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID));
CREATE TABLE OrderDetails (OrderID INT,
    ProductID INT,
    UnitPrice nvarchar(30),
    Quantity INT,
    Discount nvarchar(5),
    PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID));
INSERT INTO Suppliers (SupplierID, SupplierName) VALUES
(1, 'ABC Supplies'),
(2, 'XYZ Distributors'),
(3, 'Fresh Foods Inc.'),
(4, 'Tech Gadgets Ltd.'),
(5, 'Home Essentials Co.');
INSERT INTO Products (ProductID, ProductName, SupplierID, UnitPrice, UnitInStock) VALUES
(1, N'Laptop Dell', 4, '1200', '50'),
(2, N'Bàn phím cơ', 4, '80', '200'),
(3, N'Rau sạch', 3, '10', '500'),
(4, N'Bột giặt', 5, '5', '300'),
(5, N'Nước giải khát', 3, '2', '1000');
INSERT INTO Customers (CustomerID, CompanyName, Address, City, Region, Country) VALUES
(1, 'Tech Corp', '123 Tech Street', 'Hanoi', 'North', 'Vietnam'),
(2, 'Green Groceries', '456 Market Lane', 'Ho Chi Minh City', 'South', 'Vietnam'),
(3, 'ABC Traders', '789 Business Road', 'Da Nang', 'Central', 'Vietnam'),
(4, 'XYZ Retailers', '101 Commerce Ave', 'Can Tho', 'South', 'Vietnam'),
(5, 'Home Living', '202 Cozy St', 'Hai Phong', 'North', 'Vietnam');
INSERT INTO Employees (EmployeeID, LastName, FirstName, BirthDate, City) VALUES
(1, 'Nguyen', 'Anh', '1990-05-12', 'Hanoi'),
(2, 'Tran', 'Binh', '1985-08-23', 'Ho Chi Minh City'),
(3, 'Le', 'Cuong', '1992-03-15', 'Da Nang'),
(4, 'Pham', 'Dung', '1988-11-30', 'Can Tho'),
(5, 'Hoang', 'Evy', '1995-07-19', 'Hai Phong');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate) VALUES
(1, 1, 2, '2025-03-01'),
(2, 2, 1, '2025-03-02'),
(3, 3, 3, '2025-03-03'),
(4, 4, 4, '2025-03-04'),
(5, 5, 5, '2025-03-05');
INSERT INTO OrderDetails (OrderID, ProductID, UnitPrice, Quantity, Discount) VALUES
(1, 1, '1200', 2, '0'),
(1, 2, '80', 5, '5'),
(2, 3, '10', 10, '2'),
(3, 4, '5', 20, '1'),
(4, 5, '2', 50, '3');
INSERT INTO Customers (CustomerID, CompanyName, Address, City, Region, Country) VALUES (6, 'Cong Ty ABC', '123 Duong Nguyen Trai', 'Ha Noi', 'Dong Bac', 'Vietnam');
INSERT INTO Employees (EmployeeID, LastName, FirstName, BirthDate, City) VALUES (6, 'Nguyen', 'An', '1990-05-15', 'Ha Noi');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate) VALUES (6, 6, 6, '1997-01-10');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate) VALUES
(7, 8, 1, '1997-07-05'),
(8, 7, 3, '1997-07-09'),
(9, 9, 4, '1997-07-06'),
(10, 10, 5, '1997-07-08');

INSERT INTO Customers (CustomerID, CompanyName, Address, City, Region, Country) VALUES
(7, 'VinGroup', '345 Tech Street', 'Haiphong', 'North', 'Vietnam'),
(8, 'Coffe house', '789 Market Lane', 'Ho Chi Minh City', 'South', 'Vietnam'),
(9, 'Vietcombank ', '1012 Business Road', 'Hue', 'Central', 'Vietnam'),
(10, 'FPT retails', '108 Commerce Ave', 'Can Tho', 'South', 'Vietnam');
INSERT INTO Customers (CustomerID, CompanyName, Address, City, Region, Country) VALUES
(11, 'GRAB', '354 Tech Street', 'Haiphong', 'North', 'Vietnam'),
(12, 'HIGLAND', '909 Market Lane', 'Ho Chi Minh City', 'South', 'Vietnam'),
(13, 'AGRIBANK ', '102 Business Road', 'Hue', 'Central', 'Vietnam'),
(14, 'CONGNGHIEP retails', '118 Commerce Ave', 'Can Tho', 'South', 'Vietnam');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate) VALUES
(11, 14, 2, '1997-01-08'),
(12, 13, 1, '1997-01-10'),
(13, 12, 3, '1997-01-11'),
(14, 11, 4, '1997-01-12');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate) VALUES
(19, 5, 2, '1996-07-16'),
(20, 4, 1, '1996-07-16'),
(21, 3, 3, '1996-07-16'),
(22, 2, 4, '1996-07-16');
INSERT INTO OrderDetails (OrderID, ProductID, UnitPrice, Quantity, Discount) VALUES
(19, 1, '1200', 2, '0'),
(20, 2, '80', 5, '5'),
(21, 3, '10', 10, '2'),
(22, 4, '5', 20, '1');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate) VALUES
(23, 5, 2, '1997-09-8'),
(24, 4, 1, '1997-04-6'),
(25, 3, 3, '1997-04-16'),
(26, 2, 4, '1997-09-26');

INSERT INTO Employees (EmployeeID, LastName, FirstName, BirthDate, City) VALUES
(7, 'FULLER', 'BAO', '1990-05-12', 'Hanoi'),
(8, 'FULLER', 'HOA', '1985-08-23', 'Ho Chi Minh City'),
(9, 'FULLER', 'VU', '1992-03-15', 'Da Nang'),
(10, 'FULLER', 'ANH', '1988-11-30', 'Can Tho'),
(11, 'FULLER', 'CUONG', '1995-07-19', 'Hai Phong');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate) VALUES
(27, 5, 7, '1997-09-8'),
(28, 4, 8, '1997-04-6'),
(29, 3, 9, '1997-04-16'),
(30, 2, 10, '1997-09-26'),
(31, 1, 11, '1997-09-28');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate) VALUES
(32, 5, 7, '1997-09-8'),
(33, 4, 8, '1997-04-6'),
(34, 3, 9, '1997-04-16'),
(35, 2, 10, '1997-09-26'),
(36, 1, 11, '1997-09-28');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate) VALUES
(10248, 5, 7, '1997-09-8');
INSERT INTO OrderDetails (OrderID, ProductID, UnitPrice, Quantity, Discount) VALUES
(10248, 1, '1200', 2, '0');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate) VALUES
(37, 5, 7, '1997-09-8'),
(38, 4, 8, '1997-04-6'),
(39, 3, 9, '1997-04-16'),
(40, 2, 10, '1997-09-26'),
(41, 1, 11, '1997-09-28');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate) VALUES
(42, 5, 7, '1996-09-8'),
(43, 4, 8, '1996-04-6');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate) VALUES
(44, 5, 7, '1996-12-7'),
(45, 4, 8, '1996-12-7');



INSERT INTO OrderDetails (OrderID, ProductID, UnitPrice, Quantity, Discount) VALUES 
(44, 5, '1', 2, '0'),
(45, 5, '1', 2, '0');

INSERT INTO Employees (EmployeeID, LastName, FirstName, BirthDate, City) VALUES
(12, 'FULLER', 'BAO', '1990-05-12', 'Hanoi'),
(13, 'FULLER', 'HOA', '1985-08-23', 'Ho Chi Minh City');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate) VALUES 
(46, 4, 7, '1996-12-15'),
(47, NULL, 7, '1996-12-15');


ALTER TABLE Orders ADD RequiredDate DATE

ALTER TABLE Customers ADD Phone int
INSERT INTO Customers (CustomerID, CompanyName, Address, City, Region, Country,Phone) VALUES
(16, 'HIGLAND', '909 Market Lane', 'Ho Chi Minh City', 'South', 'Vietnam','0868286014'),
(19, 'AGRIBANK ', '102 Business Road', 'Hue', 'Central', 'Vietnam', '0914550878'),
(20, 'CONGNGHIEP retails', '118 Commerce Ave', 'Can Tho', 'South', 'Vietnam','0976720266');

ALTER TABLE Customers ADD CONTACTTITLE 
use QLSP
/*tuan5*/
SELECT*FROM Products 
SELECT CustomerID,CompanyName,City, Phone FROM Customers 
SELECT ProductID, ProductName, UnitPrice FROM Products
SELECT EmployeeID, LastName +''+ FirstName AS EmployeeName, Year(getdate()) - Year(BirthDate) Age FROM Employees
SELECT*FROM Customers WHERE CONTACTTITLE LIKE '0%'
SELECT*FROM Customers WHERE City IN ('LonDon', 'Boise', 'Paris')
SELECT*FROM Customers WHERE CustomerID LIKE 'V%' AND City = 'Lyon'
SELECT*FROM Customers WHERE Fax IS NULL
SELECT*FROM Customers WHERE Fax IS NOT NULL
SELECT*FROM Employees WHERE BirthDate <= '1960-12-31'
SELECT*FROM Products WHERE QuantityPerUnit LIKE '%Boxes%'
SELECT*FROM Products WHERE UnitPrice > 12.00 AND UnitPrice < 20.00
SELECT*FROM Orders WHERE OrderDate >= '1996-09-01' AND OrderDate <= '1990-10-01' ORDER BY CustomerID, OrderDate DESC
SELECT*FROM Orders WHERE OrderDate >= '1997-10-01' AND OrderDate < '1998-01-01' ORDER BY OrderDate
SELECT OrderID, CustomerID, EmployeeID, OrderDate, DATENAME(WEEKDAY, OrderDate) AS WEEKDAY 
FROM Orders WHERE MONTH(OrderDate) = 12 AND YEAR(OrderDate) = 1997 AND DATENAME(WEEKDAY, OrderDate) = 'Saturday' OR DATENAME(WEEKDAY, OrderDate) = 'Sunday'
SELECT ProductID, ProductName, UniPrice, UnitInStock, UniPrice*UnitInStock AS Total FROM Products 
SELECT TOP 5 * FROM Customers WHERE City LIKE 'M%'
SELECT TOP 2 EmployeeID, LastName + ' ' + FirstName AS EmployeeName, YEAR(GETDATE()) - YEAR(BirthDate) AS Age FROM Employees ORDER BY Age DESC
SELECT*FROM Products WHERE UnitInStock < 20
SELECT OrderID, ProductID, UnitPrice, Quantity, Discount, (UnitPrice*Quantity - 0.2*Discount) AS Total FROM OrderDetails

/*tuan6*/
CAU 1:
SELECT Customers.CustomerID, Customers.CompanyName, Customers.Address, Orders.OrderID, Orders.OrderDate
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE YEAR(OrderDate) = 1997 AND MONTH(OrderDate) = 7
ORDER BY Customers.CustomerID, Orders.OrderDate DESC;

CAU 2:
SELECT *
FROM Customers 
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE YEAR(OrderDate) = 1997 AND MONTH(OrderDate) = 1 AND DAY(OrderDate) <= 15;

CAU 3:
SELECT Products.ProductID, Products.ProductName, Orderdetails.OrderID, Orders.OrderDate  
FROM OrderDetails  
JOIN Orders ON OrderDetails.OrderID = Orders.OrderID  
JOIN Products ON OrderDetails.ProductID = Products.ProductID  
WHERE Orders.OrderDate = '1996-07-16';

CAU 4:
SELECT Orders.OrderID, Customers.CompanyName, Orders.OrderDate, Orders.RequiredDate
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE YEAR(Orders.OrderDate) = 1997 AND MONTH(Orders.OrderDate) IN (4, 9)
ORDER BY Customers.CompanyName, Orders.OrderDate DESC;

CAU 5:***
SELECT *
FROM Orders
JOIN Employees ON Employees.EmployeeID = Orders.EmployeeID
WHERE Employees.LastName = 'FULLER'

CAU 6 : Liệt kê danh sách các Products do nhà cung cấp (supplier) có mã 1,3,6 bán được trong tháng quý 2 của năm 1997, được sắp xếp theo mã nhà cung cấp (SupplierID), cùng mã nhà cung cấp thì sắp xếp theo ProductID**/
SELECT *
FROM Products
JOIN Suppliers ON Suppliers.SupplierID = Products.SupplierID
JOIN Orders ON Orders.OrderID = Orders.OrderID 
WHERE Suppliers.SupplierID IN ('1','3','6')
AND MONTH(Orders.OrderDate) BETWEEN '4' AND '6'
ORDER BY Suppliers.SupplierID, Products.ProductID;

CAU 7: 
SELECT *
FROM Products
JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
WHERE Products.UnitPrice = OrderDetails.UnitPrice

CAU 8
Select *FROM Products
JOIN OrderDetails ON OrderDetails.ProductID = Products.ProductID
WHERE OrderDetails.OrderID = '10248';
cau 9


SELECT *
FROM Employees 
JOIN Orders ON Orders.EmployeeID = Employees.EmployeeID
WHERE YEAR(Orders.OrderDate) = '1996' AND MONTH(Orders.OrderDate) = '7';

CAU 10: 
SELECT Products.ProductID, Products.ProductName, Orders.OrderID, Orders.OrderDate, Orders.CustomerID, Products.UnitPrice, OrderDetails.Quantity, (OrderDetails.Quantity * Products.UnitPrice) AS ToTal
FROM Products, Orders, OrderDetails
WHERE Products.ProductID = OrderDetails.ProductID
    AND OrderDetails.OrderID = Orders.OrderID
    AND YEAR(Orders.OrderDate) = 1996
    AND MONTH(Orders.OrderDate) = 12
    AND (DATEPART(weekday, Orders.OrderDate) = 7 OR DATEPART(weekday, Orders.OrderDate) = 1)
ORDER BY Products.ProductID, OrderDetails.Quantity DESC;

CAU11
SELECT E.EmployeeID, E.FirstName + ' ' + E.LastName AS EmployeeName, O.OrderID,
O.OrderDate, OD.ProductID, OD.Quantity, OD.UnitPrice,
    OD.Quantity * OD.UnitPrice AS Total
FROM Employees E, Orders O, OrderDetails OD
WHERE E.EmployeeID = O.EmployeeID
    AND O.OrderID = OD.OrderID
    AND YEAR(O.OrderDate) = 1996

CAU12:
SELECT *
FROM ORDERS 
WHERE YEAR(OrderDate)=1996
AND MONTH(OrderDate)= 12
AND DATEPART(weekday, OrderDate) = 7

CAU 13
SELECT * 
FROM Employees
LEFT JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
WHERE Orders.OrderID IS NULL

CAU 14
SELECT * 
FROM Products
RIGHT JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
WHERE OrderDetails.OrderID IS NULL

cau15
SELECT *
FROM Customers C
LEFT JOIN Orders O ON C.CustomerID = O.CustomerID
WHERE O.OrderID IS NULL

ALTER TABLE Orders ADD Shipcity nvarchar(50);
update Orders set shipcity = 'Madrid' where OrderID = 1

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate) VALUES
(54, 16, 7, '1997-09-8'),
(55, 19, 8, '1997-04-6'),
(56, 20, 9, '1997-04-16');

INSERT INTO OrderDetails (OrderID, ProductID, UnitPrice, Quantity, Discount) VALUES
(54, 1, '30000', 20, '0'),
(55, 2, '80000', 50, '5'),
(56, 3, '10000', 10, '2');

INSERT INTO Products (ProductID, ProductName, SupplierID, UnitPrice, UnitInStock, CategoryID) VALUES
(15, N'Bánh táo', 1, 15000, 5000, 1),
(16, N'Coca', 2, 10000, 4000, 2),
(17, N'Panacotta', 3, 20000, 50, 3),
(18, N'Đèn bàn', 4, 25000, 100, 3);

/*TUAN7*/
CAU 1
SELECT Orders.OrderID, Orders.OrderDate, SUM(OrderDetails.Quantity * OrderDetails.UnitPrice) AS TotalAccount
FROM Orders INNER JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
GROUP BY Orders.OrderID, Orders.OrderDate

cau 2 
SELECT Orders.OrderID, Orders.OrderDate, SUM(OrderDetails.Quantity * OrderDetails.UnitPrice) AS TotalAccount
FROM Orders INNER JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
WHERE Orders.Shipcity = 'Madrid'
GROUP BY Orders.OrderID, Orders.OrderDate

cau 3 
SELECT TOP 1 Products.ProductID, Products.ProductName, SUM(OrderDetails.Quantity) AS CountOfOrders
FROM Products INNER JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
GROUP BY Products.ProductID, Products.ProductName
ORDER BY CountOfOrders DESC

cau 4
SELECT Customers.CustomerID, Customers.CompanyName, COUNT(Orders.OrderID) AS CountOfOrders
FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerID, Customers.CompanyName

cau 5
SELECT Employees.EmployeeID, Employees.LastName, Employees.FirstName, 
COUNT(Orders.OrderID) AS CountOfOrders, SUM(OrderDetails.Quantity * OrderDetails.UnitPrice) AS TotalSales
FROM Employees INNER JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
INNER JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
GROUP BY Employees.EmployeeID, Employees.LastName, Employees.FirstName

cau 6
SELECT Employees.EmployeeID, Employees.LastName, MONTH(Orders.OrderDate) AS Month_Salary, 
SUM(OrderDetails.Quantity * OrderDetails.UnitPrice) * 0.1 AS Salary
FROM Employees
JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
WHERE YEAR(Orders.OrderDate) = 1996
GROUP BY Employees.EmployeeID, Employees.LastName, MONTH(Orders.OrderDate)
ORDER BY Month_Salary, Salary DESC

cau 7
SELECT Customers.CustomerID, Customers.CompanyName, SUM(OrderDetails.Quantity * OrderDetails.UnitPrice) AS TongTien
FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
INNER JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
WHERE Orders.OrderDate BETWEEN '1996-12-31' AND '1998-01-01'
GROUP BY Customers.CustomerID, Customers.CompanyName
HAVING SUM(OrderDetails.Quantity * OrderDetails.UnitPrice) > 20000

cau 8
SELECT Customers.CustomerID, Customers.CompanyName, COUNT(Orders.OrderID) AS TotalOrders, 
SUM(OrderDetails.Quantity * OrderDetails.UnitPrice) AS TongTien
FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
INNER JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
WHERE Orders.OrderDate BETWEEN '1996-12-31' AND '1998-01-01'
GROUP BY Customers.CustomerID, Customers.CompanyName
HAVING SUM(OrderDetails.Quantity * OrderDetails.UnitPrice) > 20000
ORDER BY Customers.CustomerID, TongTien DESC

cau 9
CREATE TABLE Categories 
(CategoryID INT PRIMARY KEY, 
CategoryName NVARCHAR(255) NOT NULL)
INSERT INTO Categories (CategoryID, CategoryName) VALUES
(1, 'Thực phẩm'),
(2, 'Đồ uống'),
(3, 'Đồ gia dụng')
ALTER TABLE Products ADD CategoryID INT REFERENCES Categories (CategoryID)
INSERT INTO Products (ProductID, ProductName, SupplierID, UnitPrice, UnitInStock, CategoryID) VALUES
(30, 'Bánh táo', 1, 15000, 500, 1),
(31, 'Coca', 2, 10000, 400, 2),
(32, 'Panacotta', 3, 20000, 50, 3),
(34, 'Đèn bàn', 4, 25000, 100, 3);

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate) VALUES
(60, 5, 7, '1997-03-8'),
(61, 4, 8, '1997-03-6'),
(62, 3, 9, '1997-03-16'),
(63, 2, 10, '1997-03-26'),
(64, 1, 11, '1997-03-28');

INSERT INTO OrderDetails (OrderID, ProductID, UnitPrice, Quantity, Discount) VALUES
(60, 1, '30000', 20, '0'),
(61, 2, '80000', 50, '5'),
(62, 3, '10000', 10, '2');


SELECT Categories.CategoryID, Categories.CategoryName, SUM(Products.UnitInStock) AS Total_UnitsInStock, AVG(Products.UnitPrice) AS Average_UnitPrice
FROM Categories INNER JOIN Products ON Categories.CategoryID = Products.CategoryID
GROUP BY Categories.CategoryID, Categories.CategoryName
HAVING SUM(Products.UnitInStock) > 300 AND AVG(Products.UnitPrice) < 25;

cau 10
SELECT Categories.CategoryID, Categories.CategoryName, COUNT(Products.ProductID) AS TotalOfProduct
FROM Categories INNER JOIN Products ON Categories.CategoryID = Products.CategoryID
GROUP BY Categories.CategoryID, Categories.CategoryName
HAVING COUNT(Products.ProductID) < 10
ORDER BY Categories.CategoryName, TotalOfProduct DESC

cau 11
SELECT Products.ProductID, Products.ProductName, SUM(OrderDetails.Quantity) AS SumofQuatity
FROM Products INNER JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
INNER JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
WHERE YEAR(Orders.OrderDate) = 1998 AND MONTH(Orders.OrderDate) IN (1, 2, 3)
GROUP BY Products.ProductID, Products.ProductName
HAVING SUM(OrderDetails.Quantity) > 200


cau12
SELECT Customers.CustomerID, Customers.CompanyName, CONCAT(MONTH(Orders.OrderDate), '/', YEAR(Orders.OrderDate)) AS Month_Year, 
SUM(OrderDetails.Quantity * OrderDetails.UnitPrice) AS Total
FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
INNER JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
GROUP BY Customers.CustomerID, Customers.CompanyName, MONTH(Orders.OrderDate), YEAR(Orders.OrderDate)


cau 13
SELECT TOP 1 Employees.EmployeeID, Employees.LastName, Employees.FirstName, SUM(OrderDetails.Quantity * OrderDetails.UnitPrice) AS Tongban
FROM Employees INNER JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
INNER JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
WHERE YEAR(Orders.OrderDate) = 1997 AND MONTH(Orders.OrderDate) = 7
GROUP BY Employees.EmployeeID, Employees.LastName, Employees.FirstName
ORDER BY Tongban DESC

cau14
SELECT TOP 3 Customers.CustomerID, Customers.CompanyName, COUNT(Orders.OrderID) AS TongOrders
FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE YEAR(Orders.OrderDate) = 1996
GROUP BY Customers.CustomerID, Customers.CompanyName
ORDER BY TongOrders DESC

cau 15
SELECT Employees.EmployeeID, Employees.LastName, Employees.FirstName, COUNT(Orders.OrderID) AS CountOfOrders, 
SUM(OrderDetails.Quantity * OrderDetails.UnitPrice) AS sumoftotal
FROM Employees INNER JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
INNER JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
WHERE YEAR(Orders.OrderDate) = 1997 AND MONTH(Orders.OrderDate) = 3
GROUP BY Employees.EmployeeID, Employees.LastName, Employees.FirstName
HAVING SUM(OrderDetails.Quantity * OrderDetails.UnitPrice) > 4000

use QLSP
update Customers set City  = 'Madrid' where CustomerID = 2
update Customers set City  = 'LonDon' where CustomerID = 3

/*TUAN 8-BAI4*/
/*CAU 1*/
SELECT Products.ProductID, Products.ProductName
FROM Products
JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
WHERE Products.UnitPrice>(SELECT AVG(Products.UnitPrice) FROM Products)
/* CAU 2*/
SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM Products WHERE ProductName LIKE 'N%');
/* CAU 3*/
SELECT *
FROM Products
WHERE Products.ProductName LIKE 'N%' AND Products.UnitPrice > (SELECT MIN(Products.UnitPrice) FROM Products)
/* CAU 4*/
SELECT Products.ProductID, Products.ProductName, Products.UnitPrice
FROM Products
JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
/* CAU 5*/
SELECT *
FROM Products
WHERE Products.ImportPrice > (SELECT MIN(Products.UnitPrice) FROM Products);
/* CAU 6*/
SELECT *
FROM Orders
JOIN Customers ON Customers.CustomerID = Orders.CustomerID
WHERE Customers.City IN ('LonDon', 'Madrid');
/* CAU 7*/
SELECT *
FROM Products
WHERE Products.QuantityPerUnit LIKE '%Box%' AND Products.UnitPrice < (SELECT AVG(Products.UnitPrice) FROM Products)
/* CAU 8*/
SELECT Products.ProductID, Products.ProductName, OrderDetails.Quantity
FROM Products JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
WHERE OrderDetails.Quantity = (SELECT MAX(OrderDetails.Quantity) FROM OrderDetails)
/* CAU 9*/
SELECT *
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderID IS NULL

SELECT * 
FROM Customers 
WHERE NOT EXISTS (SELECT 1 FROM Orders WHERE Orders.CustomerID = Customers.CustomerID);
/* CAU 10*/
SELECT *
FROM Products
WHERE Products.QuantityPerUnit LIKE '%Box%' AND Products.UnitPrice < (SELECT MAX(Products.UnitPrice) FROM Products)
/* CAU 11*/
SELECT *
FROM Products 
WHERE Products.UnitPrice > (SELECT AVG(Products.UnitPrice) FROM Products WHERE Products.ProductID <= 5);
/* CAU 12*/
SELECT Products.ProductID, Products.ProductName, SUM(OrderDetails.Quantity) AS TongBan
FROM Products JOIN OrderDetails ON Products.ProductID = OrderDetailS.ProductID
GROUP BY Products.ProductID, Products.ProductName
HAVING SUM(OrderDetails.Quantity) > (SELECT AVG(OrderDetails.Quantity) FROM OrderDetails)
/* CAU 13*/
SELECT *
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
JOIN OrderDetails ON OrderDetails.OrderID = Orders.OrderID  
WHERE OrderDetails.ProductID <= 3;
/* CAU 14*/
SELECT Products.ProductID, Products.ProductName
FROM Products
JOIN OrderDetails ON OrderDetails.ProductID = Products.ProductID
JOIN Orders ON Orders.OrderID = OrderDetails.OrderID
WHERE YEAR(Orders.OrderDate) = 1998 AND MONTH(Orders.OrderDate) BETWEEN 7 AND 9
GROUP BY Products.ProductID, Products.ProductName 
HAVING COUNT(Orders.OrderID) > 20
/* CAU 15*/
SELECT Products.ProductID, Products.ProductName
FROM Products WHERE Products.ProductID NOT IN (SELECT OrderDetails.ProductID FROM OrderDetails
JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
WHERE YEAR(Orders.OrderDate) = 1996 AND MONTH(Orders.OrderDate) = 6);
/* CAU 16*/
SELECT *
FROM Employees 
WHERE Employees.EmployeeID NOT IN (SELECT Orders.EmployeeID FROM Orders 
WHERE Orders.OrderDate = GETDATE());
/* CAU 17*/
SELECT *
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID AND YEAR(Orders.OrderDate) = 1997
WHERE Orders.OrderID IS NULL;

SELECT *
FROM Customers 
WHERE Customers.CustomerID NOT IN (SELECT DISTINCT Orders.CustomerID FROM Orders
WHERE YEAR(Orders.OrderDate) = 1997)
/* CAU 18*/
SELECT *
FROM Customers 
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
JOIN Products ON OrderDetails.ProductID = Products.ProductID
WHERE Products.ProductName LIKE 'T%' AND MONTH(Orders.OrderDate) = 7
/* CAU 19*/
SELECT Customers.City, COUNT(Customers.CustomerID) AS TongKH
FROM Customers 
GROUP BY Customers.City
HAVING COUNT(Customers.CustomerID) > 3;
/* CAU 20*/
Select ProductId, ProductName, UnitPrice from [Products]
Where Unitprice>ALL (Select Unitprice from [Products] where 
ProductName like 'B%')
/* câu: liệt kê các sản phẩm bắt đầu bằng chữ 'B' có giá bán lớn nhất. Thông tin gồm productid, productname và unitprice*/
Select ProductId, ProductName, UnitPrice from [Products]
Where Unitprice>ANY (Select Unitprice from [Products] where 
ProductName like 'B%')
/* câu: liệt kê các sản phẩm bắt đầu bằng chữ 'B' có giá bán lớn hơn một số sản phẩm khác. Thông tin gồm productid, productname và unitprice*/
Select ProductId, ProductName, UnitPrice from [Products]
Where Unitprice=ANY (Select Unitprice from [Products] where 
ProductName like 'B%')
/* câu: liệt kê các sản phẩm bắt đầu bằng chữ 'B' có giá bán bằng một vài sản phẩm khác. Thông tin gồm productid, productname và unitprice*/

/*TUAN10*/
USE QLSP

SELECT * FROM Products
SELECT * FROM Customers
SELECT * FROM Orders
SELECT * FROM OrderDetails

CREATE TABLE Categories 
(	CategoryID INT PRIMARY KEY,
	CategoryName VARCHAR(255),
	Description VARCHAR(255))

INSERT INTO Categories VALUES
(1, 'Đồ uống', 'Đồ uống nhẹ, cà phê, trà, bia và bia đen'),
(2, 'Gia vị', 'Nước sốt ngọt và mặn, tương ớt, đồ phết và gia vị'),
(3, 'Bánh kẹo', 'Món tráng miệng, kẹo và bánh mì ngọt'),
(4, 'Sản phẩm từ sữa', 'Phô mai'),
(5, 'Ngũ cốc/Ngũ cốc', 'Bánh mì, bánh quy giòn, mì ống và ngũ cốc'),
(6, 'Thịt/Gia cầm', 'Thịt chế biến'),
(7, 'Sản phẩm', 'Trái cây sấy khô và đậu phụ'),
(8, 'Hải sản', 'Rong biển và cá')

ALTER TABLE Products
ADD CategoryID INT

ALTER TABLE Products
ADD QuantityPerUnit VARCHAR(50)

 
ALTER TABLE Products
ADD UnitsInStock INT

INSERT INTO Products VALUES
(5, 'Espresso', 1, 10000, 55, 1, 'Box', 1000),
(6, 'Trà thảo mộc', 2, 20000, 80, 3, 'Box', 2000),
(7, 'Bánh sô cô la', 3, 30000, 40, 2, 'Box', 1500),
(8, 'Bánh phô mai', 4, 40000, 20, 1, 'Box', 25000)


CREATE VIEW vw_Products_Info AS
SELECT Categories.CategoryName, 
	Categories.Description, 
	Products.ProductName, 
	Products.QuantityPerUnit, 
	Products.UnitPrice, 
	Products.UnitInStock
FROM Products
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID
 
SELECT * FROM vw_Products_Info


INSERT INTO Products 
VALUES 
(9, 'Tà tưa', 1, 20, 40, 2, 'Box', 1000),
(10, 'Late', 2, 16, 50, 1, 'Box', 1002),
(11, 'Bánh dâu', 1, 26, 100, 1, 'Box', 1200)

INSERT INTO Orders
VALUES 
(6, 1, 1, '2025-09-18'),
(7, 1, 2, '2025-01-15'),
(8, 3, 2, '2025-04-13')


INSERT INTO OrderDetails 
VALUES 
(6, 9, 16, 2, 0.10),
(7, 10, 20,1, 0.05),
(8, 11, 26, 5, 0.01)

CREATE VIEW List_Product_view AS
SELECT Products.ProductID,
		Products.ProductName,
		Products.UnitPrice,
		Products.QuantityPerUnit,
		COUNT(OrderDetails.OrderID) AS ORDER_COUNT
FROM Products
INNER JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
WHERE Products.QuantityPerUnit LIKE '%Box%' AND Products.UnitPrice > 16
GROUP BY Products.ProductID, Products.ProductName, Products.UnitPrice, Products.QuantityPerUnit

SELECT * FROM List_Product_view

CREATE VIEW vw_CustomerTotals AS
SELECT Orders.CustomerID, 
		YEAR(Orders.OrderDate) AS OrderYear, 
		MONTH(Orders.OrderDate) AS OrderMonth,
		SUM(OrderDetails.UnitPrice*OrderDetails.Quantity) AS Totals
FROM Orders
INNER JOIN OrderDetails ON Orders.OrderID = Orders.OrderID
GROUP BY  Orders.CustomerID,  YEAR(Orders.OrderDate), MONTH(Orders.OrderDate)

SELECT * FROM vw_CustomerTotals

CREATE VIEW vw_Employee WITH ENCRYPTION AS
SELECT Orders.EmployeeID, 
		YEAR(Orders.OrderDate) AS OrderYear,
		SUM(OrderDetails.Quantity) AS sumOfOrderQuantity
FROM Orders
INNER JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
GROUP BY Orders.EmployeeID, YEAR(Orders.OrderDate)
		
SELECT * FROM vw_Employee


INSERT INTO Orders 
VALUES 
(9, 2, 1, '1997-02-15'),
(10, 1, 2, '1997-03-20'),
(11, 1, 3, '1997-04-25'),
(12, 2, 4, '1997-05-30'),
(13, 1, 5, '1997-06-15')


--CREATE VIEW ListCustomer_view AS
--SELECT Orders.CustomerID,
--		Customers.CompanyName,
--		COUNT(Orders.OrderID) AS CountOfOrders
--FROM Orders
--INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
--WHERE YEAR(Orders.OrderDate) BETWEEN 1997 AND 1998
--GROUP BY Orders.CustomerID, Customers.CompanyName
--HAVING COUNT(Orders.OrderID) > 5
		
--SELECT * FROM ListCustomer_view


INSERT INTO Categories  
VALUES
(9, 'Beverages','Đồ uống'),
(10, 'Seafood','Đồ ăn')

INSERT INTO Products 
VALUES
(12, 'Chai', 1, 25, 60, 9, 'Box', 1002),
(13, 'Chang', 1, 34, 120, 10, 'Box', 1200),
(14, 'Ikura', 2, 45, 100, 9, 'Box', 1000)

INSERT INTO OrderDetails
VALUES
(8, 12, 100, 31, 0.00),
(9, 13, 200, 40, 0.05),
(10, 14, 300, 50, 0.10)

CREATE VIEW ListProduct_view AS
SELECT Categories.CategoryName,
       Products.ProductName,
       YEAR(Orders.OrderDate) AS OrderYear,
       SUM(OrderDetails.Quantity) AS sumOfOrderQuantity
FROM Categories
INNER JOIN Products ON Categories.CategoryID = Products.CategoryID
INNER JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
INNER JOIN Orders ON Orders.OrderID = OrderDetails.OrderID
WHERE Categories.CategoryName IN ('Beverages', 'Seafood')
GROUP BY Categories.CategoryName, Products.ProductName, YEAR(Orders.OrderDate)
HAVING SUM(OrderDetails.Quantity) > 30

SELECT * FROM ListProduct_view

CREATE VIEW vw_OrderSummary WITH ENCRYPTION AS
SELECT YEAR(Orders.OrderDate) AS OrderYear,
		MONTH(Orders.OrderDate) As OrderMonth,
		SUM(OrderDetails.UnitPrice*OrderDetails.Quantity) AS OrderTotal
FROM Orders
INNER JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
GROUP BY YEAR(Orders.OrderDate), MONTH(Orders.OrderDate)

SELECT * FROM vw_OrderSummary

ALTER TABLE Products
ADD Discount DECIMAL(5, 2)

CREATE VIEW vw_Products WITH ENCRYPTION AS
SELECT Products.ProductID,
		Products.ProductName,
		Products.Discount
FROM Products

SELECT * FROM vw_Products

--CREATE VIEW vw_Customer
--WITH CHECK OPTION AS
--SELECT Customers.CustomerID,
--       Customers.CompanyName,
--       Customers.City
--FROM Customers
--WHERE Customers.City IN ('London', 'Madrid')

--SELECT * FROM vw_Customer

CREATE TABLE KhachHang_Bac
(	MaKh INT PRIMARY KEY,
	TenKH VARCHAR(350),
	DiaChi VARCHAR(350),
	KhuVuc VARCHAR(350) CHECK (KhuVuc = 'Bac Bo'))

CREATE TABLE KhachHang_Nam
(	MaKh INT PRIMARY KEY,
	TenKH VARCHAR(350),
	DiaChi VARCHAR(350),
	KhuVuc VARCHAR(350) CHECK (KhuVuc = 'Nam Bo'))

CREATE TABLE KhachHang_Trung
(	MaKh INT PRIMARY KEY,
	TenKH VARCHAR(350),
	DiaChi VARCHAR(350),
	KhuVuc VARCHAR(350) CHECK (KhuVuc = 'Trung Bo'))

INSERT INTO KhachHang_Bac (MaKH, TenKH, DiaChi, KhuVuc)
VALUES 
(1, 'Nguyen Van Manh', 'Hanoi', 'Bac Bo'),
(2, 'Tran Thi Nhi', 'Hai Phong', 'Bac Bo'),
(3, 'Le Van Man', 'Ha Long', 'Bac Bo')

INSERT INTO KhachHang_Trung (MaKH, TenKH, DiaChi, KhuVuc)
VALUES 
(4, 'Pham Van Minh', 'Da Nang', 'Trung Bo'),
(5, 'Nguyen Thi Le', 'Hue', 'Trung Bo'),
(6, 'Tran Van Vinh', 'Quang Nam', 'Trung Bo')

INSERT INTO KhachHang_Nam (MaKH, TenKH, DiaChi, KhuVuc)
VALUES 
(7, 'Le Thi Nho', 'Ho Chi Minh', 'Nam Bo'),
(8, 'Nguyen Van Nghia', 'Can Tho', 'Nam Bo'),
(9, 'Tran Thi Linh', 'Vung Tau', 'Nam Bo')

CREATE VIEW partition_view AS
SELECT * FROM KhachHang_Bac
UNION ALL
SELECT * FROM KhachHang_Trung
UNION ALL
SELECT * FROM KhachHang_Nam

SELECT * FROM partition_view

CREATE VIEW Products_Box AS
SELECT * FROM Products
WHERE QuantityPerUnit LIKE '%Box%'

SELECT * FROM Products_Box

INSERT INTO Products
VALUES
(15, 'Muối', 1, 9, 60, 9, 'Box', 1002,0.01),
(16, 'Mắm', 1, 5, 100, 10, 'Box', 1200, 0.05)

CREATE VIEW Products_10 AS
SELECT * FROM Products
WHERE UnitPrice < 10

SELECT * FROM Products_10

CREATE VIEW Products_Avg AS
SELECT * FROM Products
WHERE UnitPrice >= (SELECT AVG(UnitPrice) FROM Products)

SELECT * FROM Products_Avg

CREATE VIEW Customer_Orders AS
SELECT Customers.CustomerID AS CustID,
       Customers.CompanyName,
       Orders.OrderID,
       Orders.EmployeeID,
       Orders.OrderDate,
       OrderDetails.OrderID AS OrderDetailID,
       OrderDetails.ProductID,
       OrderDetails.UnitPrice,
       OrderDetails.Quantity,
       OrderDetails.Discount
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
INNER JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID

SELECT * FROM Customer_Orders

EXEC sp_helpindex 'Orders'
DROP INDEX PK__Orders__C3905BAFD6A7E6BA ON Orders 

CREATE CLUSTERED INDEX Orders_CustomerID
ON Orders (CustomerID)
sp_helpindex 'Orders'
SELECT * FROM Orders

CREATE NONCLUSTERED INDEX Orders_EmployeeID
ON Orders (EmployeeID)
sp_helpindex 'Orders'
SELECT * FROM Orders

ALTER TABLE Orders
ADD DiemTL INT
CREATE UNIQUE INDEX Orders_DiemTL
ON Orders (DiemTL)
WHERE DiemTL IS NOT NULL

SELECT * FROM Orders WHERE orderdate = GETDATE()
CREATE NONCLUSTERED INDEX Orders_OrderDate
ON Orders(orderdate)

SELECT * FROM Products WHERE ProductID = 57
CREATE NONCLUSTERED INDEX Products_ProductId 
ON Products(ProductID)
		









