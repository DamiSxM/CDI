--Les tarifs des produits doivent être augmentés en fonction de leur famille :
-- Produits de la mer : 10 %	ID = 8	'Seafood'
-- Céréales : 5 %				ID = 5	'Grains/Cereals'
-- Autres produits : 2 %
--Utiliser une structure CASE

select c.CategoryID, CategoryName, p.UnitPrice
from Products p inner join Categories c
on p.CategoryID = c.CategoryID

--update Products
--set UnitPrice = (case
--when CategoryID in (select CategoryID from Categories where CategoryName = 'Seafood') then UnitPrice*1.1
--when CategoryID in (select CategoryID from Categories where CategoryName = 'Grains/Cereals') then UnitPrice*1.05
--else UnitPrice*1.02
--end)