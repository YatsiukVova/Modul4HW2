SELECT * FROM Sales.Customer;

GO

SELECT * FROM Sales.Store ORDER BY Name;

GO

SELECT TOP 10 * FROM HumanResources.Employee 
WHERE BirthDate > '1989-09-28';

GO

SELECT NationalIDNumber, LoginID, JobTitle
FROM HumanResources.Employee
WHERE LoginID LIKE '%0'
ORDER BY JobTitle DESC;

GO

SELECT * FROM Person.Person
WHERE ModifiedDate LIKE '%2008%'
AND MiddleName IS NOT NULL
AND Title IS NULL;

GO

SELECT Name FROM HumanResources.Department
WHERE DepartmentID IN
(SELECT HumanResources.EmployeeDepartmentHistory.DepartmentID
FROM HumanResources.EmployeeDepartmentHistory)
ORDER BY Name;

GO

SELECT TerritoryID, SUM(CommissionPct) AS Sum
FROM Sales.SalesPerson
GROUP BY TerritoryID
HAVING SUM(CommissionPct) > 0;

GO

SELECT * FROM HumanResources.Employee
WHERE VacationHours = (SELECT Max(VacationHours) FROM HumanResources.Employee);

GO

SELECT * FROM HumanResources.Employee
WHERE JobTitle IN ('Sales Representative', 'Network Administator', 'Network Manager');

GO

SELECT * FROM HumanResources.Employee
LEFT JOIN Purchasing.PurchaseOrderHeader
ON BusinessEntityID = EmployeeID;