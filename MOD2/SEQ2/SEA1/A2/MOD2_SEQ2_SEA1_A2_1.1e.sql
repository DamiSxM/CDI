--Donnez le nombre de commandes réalisées par société de livraison (shipVia)

select s.CompanyName, Count(o.OrderID) nb
from Orders o inner join Shippers s
on o.ShipVia = s.ShipperID
group by s.CompanyName
order by s.CompanyName asc