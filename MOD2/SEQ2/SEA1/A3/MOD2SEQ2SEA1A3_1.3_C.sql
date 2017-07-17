--Créer une table des clients français.
--Télécharger le script à disposition sur votre site et exécuter ce dernier.
--(CreationTableFrenchCustomers.sql).
--Remplir la table par sélection des clients français.
--Vous ne devez pas générer de nouvelles valeurs de clés mais reprendre celles de la table
--Customers de façon à pouvoir préserver le lien entre client français et client.
--Les informations sur le nombre de commandes ne sont pas répliquées

select * from FrenchCustomers

--set identity_Insert FrenchCustomers On

insert into FrenchCustomers(CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax, IdPays2)
select CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax, IdPays2
from Customers
where Country = 'France'

--set identity_Insert FrenchCustomers Off