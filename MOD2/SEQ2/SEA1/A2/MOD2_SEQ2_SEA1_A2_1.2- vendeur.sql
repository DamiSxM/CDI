--create view Vendeur as

select (e.FirstName + ' ' + e.LastName) as nom ,year(o.OrderDate) as annee, round(sum((od.UnitPrice * (1- od.Discount))), 2) as CAnet
from Orders o inner join [Order Details] od
on o.OrderID = od.OrderID
inner join Employees e
on o.EmployeeID = e.EmployeeID
group by e.LastName,e.FirstName, year(o.OrderDate)