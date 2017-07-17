--La date de naissance de Mademoiselle Janet Livingston est erronée.
--Modifier celle-ci en lui affectant la valeur correcte 30 juin 1973. . (DB ComptoirAnglais –
--Employees)--update Employees--set BirthDate = cast('1973-06-30' as date)--where FirstName = 'Janet'--and LastName = 'Livinston'select *from Employeeswhere FirstName = 'Janet'and LastName = 'Livinston'