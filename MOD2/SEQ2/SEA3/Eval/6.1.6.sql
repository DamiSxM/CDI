select e.NomEcurie as Ecurie, sum(isnull(r.NombrePointsMarques,0)) as Points

from ResultatCourse r
join Pilote p
on r.CodePilote = p.CodePilote
join Ecurie e
on p.CodeEcurie = e.CodeEcurie

group by e.NomEcurie

order by Points desc, e.NomEcurie