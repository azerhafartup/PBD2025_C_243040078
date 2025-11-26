USE RetailStoreDB;

 SELECT * 
 FROM Production.Product;

 SELECT Name ProductNumber Listprice
 FROM Production.Product;

 SELECT Name AS [Nama Barang],Listprice AS 'Harga Jual'
 FROM Production.Product;

 SELECT Name Listprice, (Listprice *1.1) AS Harga Baru
 FROM Production.Product;

 SELECT Name + '(' + ProductNumber + ')' AS ProdukLengkap
 FROM Production.product;

 SELECT Name, Color, ListPrice
 FROM Production.Product
 WHERE Color = 'blue'

 SELECT Name, ListPrice
 FROM Production.Product
 WHERE ListPrice >2000;

 SELECT Name, Color, ListPrice
 FROM Production.product
 WHERE Color = 'Black' OR Color = 'red'
 ORDER BY Color Dest;

 SELECT Name, Color,ListPrice
 FROM Production.product
 WHERE Color IN ('red', 'black', 'blue')
 ORDER BY Color ASC;

 SELECT Name, productNumber
 FROM Production.product
 WHERE Name LIKE '%road%';

 
 SELECT COUNT(*) AS TotalProduk
 FROM Production.product

 SELECT Color, COUNT(*) AS JumlahProduk
 FROM Production.product
 GROUP BY Color;

 SELECT ProductID, SUM(OrderQTY) AS TotalJual, AVG(Unitprice) AS HargaTengah
 FROM  Sales.SalesOrderDetail
 GROUP BY ProductID;


 SELECT Color, COUNT(*) AS JumlahTotal
 FROM Production.Product
 GROUP BY Color
 HAVING COUNT(*) > 1;

 SELECT Color, COUNT(*) AS TotalJumlah
 FROM Production.product
 WHERE ListPrice > 100
 GROUP  BY Color
 HAVING COUNT(*) > 1;

 SELECT ProductID, SUM(OrderQTY) AS TotalQTY
 FROM Sales.SalesOrderDetail
 GROUP BY ProductID
 HAVING SUM(OrderQTY) >10

 SELECT SpecialOfferID, AVG(OrderQTY) AS Rataratabeli
 FROM Sales.SalesOrderDetail
 GROUP BY SpecialOfferID
 HAVING AVG(OrderQty) > 2;

 SELECT Color
 FROM Production.Product
 GROUP BY Color
 HAVING MAX(ListPrice) > 3000;

 SELECT*FROM HumanResources.Employee;

 SELECT DISTINCT JobTitle FROM HumanResources.Employee;

 SELECT Name, ListPrice
 FROM Production.Product
 ORDER BY ListPrice DESC;

 SELECT TOP 5 Name, ListPrice 
 FROM Production.Product 
 ORDER BY ListPrice DESC;

 SELECT Name, ListPrice 
 FROM Production.Product 
 ORDER BY ListPrice DESC 
 OFFSET 10 ROWS 
 FETCH NEXT 5 ROWS ONLY;

 SELECT TOP 3 Color, SUM(ListPrice) AS TotalNilaiStok 
 FROM Production.Product 
 WHERE ListPrice > 0          
 GROUP BY Color               
 ORDER BY TotalNilaiStok DESC;