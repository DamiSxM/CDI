--Ins�rer un nouveau collaborateur dans la table Employees.
--Vous forcerez la valeur de la colonne identit� en mettant en �uvre les op�rations de
--suspension et de reprise de la g�n�ration de valeurs d�identit� (identity_Insert On Off).begin tran

set identity_Insert Employees On

insert into Employees (EmployeeID, LastName, FirstName)
values (10000, 'Bachelet', 'Damien')

set identity_Insert Employees Off

rollback