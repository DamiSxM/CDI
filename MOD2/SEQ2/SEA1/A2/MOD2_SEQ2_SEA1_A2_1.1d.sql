--Donnez les coordonnées des employés par responsable hiérarchique direct (faire figurer
--le nom de ce dernier).Ordonnez les éléments selon le nom du responsable hiérarchique.

select e1.FirstName Prénom, e1.LastName Nom, e1.Address Adresse, e2.LastName Suppérieur
from Employees e1 inner join Employees e2
on e1.ReportsTo = e2.EmployeeID