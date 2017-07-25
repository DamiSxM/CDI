select pi.NomPilote as Nom

from GrandPrix gp
inner join PlanificationGP pl
on gp.CodeGP = pl.CodeGP
inner join ResultatCourse rc
on pl.CodeGP = rc.CodeGP
left join Pilote pi
on rc.CodePilote = pi.CodePilote

where rc.Abandon = 0
and rc.Qualifie = 1

group by pi.NomPilote

having count(gp.CodeGP) = (select count(r.CodeGP) from ResultatCourse r where r.Place = 1)
