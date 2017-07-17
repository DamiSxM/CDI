--Variante plus complexe d�une des questions pr�c�dentes :
--Donnez le ratio de commandes trait�es pour chaque soci�t� de livraison. Il vous faut
--donc faire un rapport entre le nombre total de commandes et celui des commandes
--livr�es par la soci�t�. Cette op�ration n�cessite d�int�grer une requ�te interne dans le
--calcul du ratio.

select distinct s.CompanyName, (count(o.OrderID) *100 / (select count(*) from Orders)) as ratio
from Orders o inner join Shippers s
on o.ShipVia = s.ShipperID
group by s.CompanyName