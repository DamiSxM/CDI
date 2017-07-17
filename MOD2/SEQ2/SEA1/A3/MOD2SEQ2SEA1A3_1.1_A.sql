--Enregistrer le changement d’adresse du client ANTONIO MORENO TAQUERÍA code
--ANTON. Sa nouvelle adresse est Avenida Vertiz 616., Col. Navarrete 64 000 Monterrey.
--Table Customers

--Update Customers
--set Address = 'Vertiz 616., Col. Navarrete', PostalCode = '64000', City = 'Monterrey'
--where CustomerID = 'ANTON'

select *
from Customers
where CustomerID = 'ANTON'