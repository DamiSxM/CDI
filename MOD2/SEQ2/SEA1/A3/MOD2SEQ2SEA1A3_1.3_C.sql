--Cr�er une table des clients fran�ais.
--T�l�charger le script � disposition sur votre site et ex�cuter ce dernier.
--(CreationTableFrenchCustomers.sql).
--Remplir la table par s�lection des clients fran�ais.
--Vous ne devez pas g�n�rer de nouvelles valeurs de cl�s mais reprendre celles de la table
--Customers de fa�on � pouvoir pr�server le lien entre client fran�ais et client.
--Les informations sur le nombre de commandes ne sont pas r�pliqu�es

select * from FrenchCustomers

--set identity_Insert FrenchCustomers On

insert into FrenchCustomers(CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax, IdPays2)
select CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax, IdPays2
from Customers
where Country = 'France'

--set identity_Insert FrenchCustomers Off