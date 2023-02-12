/*****************************************************************************************************************

NAME:    Adventure Works
PURPOSE: Create answers

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     02/11/2023   Alonzo       1. Built this script for IT 143

******************************************************************************************************************/

-- Q1: Show me all the data in Person.Address table.
-- A1: The only required thing is to select all "*" the data using a query.

SELECT * FROM Person.Address;


-- Q2: Give me the 10 first row in the Person.Person table
-- A2: I'll have to use the TOP function and request the data to the table.

SELECT TOP(10) [BusinessEntityID] FROM Person.Person;


-- Q3: How would you query ten first names, last names, and email addresses of the person's and email's table?
-- A3: I have to make a query that specify the requirements.

SELECT a.FirstName, a.LastName, b.EmailAddress FROM Person.Person a
JOIN Person.EmailAddress b ON a.BusinessEntityID = b.BusinessEntityID;


-- Q4: I would like to know more about our employees, how many employees are less than 30 years? 
-- A4: First get the ID of the employees and fuse it with the ages data.

SELECT a.FirstName, DATEDIFF(hour,BirthDate,GETDATE())/8766 AS age FROM Person.Person a
JOIN HumanResources.Employee b ON a.BusinessEntityID = b.BusinessEntityID;


-- Q5: How would you be able to get each employee's password's last modification, including its name, job title. Filtered by a married marital status and male gender. Including an order from newest to oldest?
-- A5: First get all the required tables, then proceed to order them.

SELECT a.ModifiedDate, b.FirstName, c.JobTitle FROM Person.Password a
JOIN Person.Person b ON a.BusinessEntityID = b.BusinessEntityID
JOIN HumanResources.Employee c ON a.BusinessEntityID = c.BusinessEntityID
WHERE c.MaritalStatus = 'M' AND c.Gender = 'M'
ORDER BY a.ModifiedDate DESC;


-- Q6: How would you be able to get a sales person credit card id, his name, last name. Ordered by their highest sales quota. Filtered by a single marital status, and the most recent hiring?
-- A6: First get all the required tables, then proceed to order them.

SELECT a.CreditCardID, b.FirstName, b.LastName, d.SalesQuota, c.HireDate FROM Sales.PersonCreditCard a
JOIN Person.Person b ON a.BusinessEntityID = b.BusinessEntityID
JOIN HumanResources.Employee c ON a.BusinessEntityID = c.BusinessEntityID
JOIN Sales.SalesPersonQuotaHistory d ON a.BusinessEntityID = d.BusinessEntityID
WHERE c.MaritalStatus = 'S'
ORDER BY d.SalesQuota, c.HireDate DESC;


-- Q7: How many tables are there in the batabase AdventureWorks2019?
-- A7: We must use the COUNT function to get the number of tables.

SELECT COUNT(*) FROM AdventureWorks2019.INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE';


-- Q8: In table Person.Person give me the data Type of the primary key.
-- A8: First we must get all the information of the columns, and then request it.

SELECT DATA_TYPE FROM AdventureWorks2019.INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Person' AND COLUMN_NAME = 'BusinessEntityID';