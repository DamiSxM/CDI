--create view PaysduClientPayeur as

select distinct c.Country, year(o.OrderDate)as annee, round(sum((od.UnitPrice * (1- od.Discount))),2) as CAnet
from Orders o inner join Customers c
on o.CustomerID = c.CustomerID
inner join [Order Details] od
on o.OrderID = od.OrderID
group by c.Country, year(o.OrderDate)