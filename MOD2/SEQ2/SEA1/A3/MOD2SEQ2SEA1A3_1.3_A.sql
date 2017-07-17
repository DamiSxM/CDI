--Insérer un nouveau produit dans la table Products. Vous pouvez choisir les valeurs des
--attributs de ce nouveau tuple mais devez respecter les contraintes d’intégrité existantes. 

select * from Products

begin tran

insert into Products (ProductName, SupplierID, CategoryID, QuantityPerUnit,
UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued, UnitsReserved)
values ('Super Produit', 1, 3,10,10,10,10,5, 0, 0)

rollback