select p.NomPilote as Pilote, sum(isnull(r.NombrePointsMarques,0)) as Points

from ResultatCourse r
join Pilote p
on r.CodePilote = p.CodePilote

group by p.NomPilote

order by Points desc, p.NomPilote
