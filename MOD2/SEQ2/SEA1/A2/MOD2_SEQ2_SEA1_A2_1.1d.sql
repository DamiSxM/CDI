--Donnez les coordonn�es des employ�s par responsable hi�rarchique direct (faire figurer
--le nom de ce dernier).Ordonnez les �l�ments selon le nom du responsable hi�rarchique.

select e1.FirstName Pr�nom, e1.LastName Nom, e1.Address Adresse, e2.LastName Supp�rieur
from Employees e1 inner join Employees e2
on e1.ReportsTo = e2.EmployeeID