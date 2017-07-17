--Supprimer les clients qui n’ont aucune commande.

select o.CustomerID
from Customers c
left join Orders o
on o.CustomerID = c.CustomerID

begin tran

delete  Customers
where CustomerID not in
(select CustomerID
from Orders)

rollback