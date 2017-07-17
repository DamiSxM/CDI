--Supprimer les produits qui ne font pas l’objet d’une commande.

select *
from Products
where ProductID not in
(select ProductID from [Order Details])

begin tran

delete Products
where ProductID not in
(select ProductID from [Order Details])

rollback