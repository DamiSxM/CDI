--Insérer un nouveau collaborateur dans la table Employees.
--Vous forcerez la valeur de la colonne identité en mettant en œuvre les opérations de
--suspension et de reprise de la génération de valeurs d’identité (identity_Insert On Off).begin tran

set identity_Insert Employees On

insert into Employees (EmployeeID, LastName, FirstName)
values (10000, 'Bachelet', 'Damien')

set identity_Insert Employees Off

rollback