--Les collaborateurs de � Stevenin Buchanan �, suite au d�part � la retraite de ce dernier,
--sont plac�s sous la responsabilit� de � Andrew Fuller �

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