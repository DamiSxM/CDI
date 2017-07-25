select g.NomGrandPrix as GrandPrix, FORMAT(pl.DateGP, 'dd/MM/yyyy') as Date, p.NomPilote as Pilote, e.NomEcurie, r.NumVoiture as Voiture

from GrandPrix g
join PlanificationGP pl
on g.CodeGP = pl.CodeGP
join ResultatCourse r
on g.CodeGP = r.CodeGP
join Pilote p
on r.CodePilote = p.CodePilote
join Ecurie e
on p.CodeEcurie = e.CodeEcurie

where r.Place = 1
order by pl.DateGP