select p.NomPilote as Pilote, avg(isnull(r.NombrePointsMarques,0)) as Indice

from ResultatCourse r
join Pilote p
on r.CodePilote = p.CodePilote

group by p.NomPilote
order by Indice desc