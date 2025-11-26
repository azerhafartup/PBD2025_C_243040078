SELECT TOP 10 ProductID, SUM(LineTotal) AS TotalRevenue
FROM Sales.SalesOrderDetail
WHERE OrderQty >= 2
GROUP BY ProductID
HAVING SUM(LineTotal) > 50000
ORDER BY TotalRevenue DESC;

SELECT ProductID, SUM(OrderQty) AS TotalQty   
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

SELECT ProductID, SUM(OrderQty) AS TotalQty 
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(OrderQty) > (
SELECT AVG(OrderQty) FROM Sales.SalesOrderDetail
);

SELECT SalesOrderID, SUM(LineTotal) AS TotalRevenue 
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID
ORDER BY TotalRevenue DESC;

SELECT TOP 5 ProductID, LineTotal 
FROM Sales.SalesOrderDetail
ORDER BY LineTotal DESC;

SELECT ProductID, OrderQty, LineTotal  
FROM Sales.SalesOrderDetail
WHERE OrderQty >= 5 AND LineTotal > 10000;

SELECT ProductID, SUM(LineTotal) AS TotalRevenue 
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY TotalRevenue DESC
OFFSET 10 ROWS
FETCH NEXT 5 ROWS ONLY;