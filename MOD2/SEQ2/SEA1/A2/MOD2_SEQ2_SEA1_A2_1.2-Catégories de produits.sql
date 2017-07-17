--create view CategoriesProduits as

select distinct c.CategoryName, year(o.OrderDate) as annee, round(sum((od.UnitPrice * (1 - od.Discount))), 2) as CAnet
from [Order Details] od inner join Products p
on od.ProductID = p.ProductID
inner join Orders o
on o.OrderID = od.OrderID
inner join Categories c
on p.CategoryID = c.CategoryID
group by c.CategoryName, year(o.OrderDate)