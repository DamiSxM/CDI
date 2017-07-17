select *
from Suppliers s
where s.SupplierID in 
(select SupplierID
from Products
group by SupplierID
having Count(ProductID) >=3)