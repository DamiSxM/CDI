--Les collaborateurs de « Stevenin Buchanan », suite au départ à la retraite de ce dernier,
--sont placés sous la responsabilité de « Andrew Fuller »

--select *
--from Employees
--where ReportsTo =
--(select EmployeeID
--from Employees
--where FirstName = 'Stevenin' and LastName = 'Buchanan')

--(select EmployeeID
--from Employees
--where FirstName = 'Andrew' and LastName = 'Fuller')

--update Employees
--set ReportsTo = (select EmployeeID
--from Employees
--where FirstName = 'Andrew' and LastName = 'Fuller')
--where ReportsTo =
--(select EmployeeID
--from Employees
--where FirstName = 'Stevenin' and LastName = 'Buchanan')

--select *
--from Employees
--where ReportsTo =
--(select EmployeeID
--from Employees
--where FirstName = 'Andrew' and LastName = 'Fuller')