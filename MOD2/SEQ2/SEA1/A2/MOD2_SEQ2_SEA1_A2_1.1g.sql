--Variante plus complexe d’une des questions précédentes :
--Donnez le ratio de commandes traitées pour chaque société de livraison. Il vous faut
--donc faire un rapport entre le nombre total de commandes et celui des commandes
--livrées par la société. Cette opération nécessite d’intégrer une requête interne dans le
--calcul du ratio.

select distinct s.CompanyName, (count(o.OrderID) *100 / (select count(*) from Orders)) as ratio
from Orders o inner join Shippers s
on o.ShipVia = s.ShipperID
group by s.CompanyName