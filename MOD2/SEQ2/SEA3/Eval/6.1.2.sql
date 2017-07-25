select FORMAT(pl.DateGP, 'dd/MM/yyyy') as Date, pi.NomPilote as Nom, vo.NumVoiture as Numero, ec.NomEcurie as Ecurie, rc.TempsCourse as Temps, rc.NombrePointsMarques as Points

from GrandPrix gp
inner join PlanificationGP pl
on gp.CodeGP = pl.CodeGP
inner join ResultatCourse rc
on pl.CodeGP = rc.CodeGP
inner join Pilote pi
on rc.CodePilote = pi.CodePilote
inner join Voiture vo
on rc.NumVoiture = vo.NumVoiture
inner join Ecurie ec
on vo.CodeEcurie = ec.CodeEcurie

where gp.CodeGP = 'GPBH'
and rc.Abandon = 0

order by rc.TempsCourse