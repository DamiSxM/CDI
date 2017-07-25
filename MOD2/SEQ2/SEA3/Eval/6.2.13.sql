select pi.NomPilote as Pilote,  CONVERT(DECIMAL(10,3),avg(dbo.CalculVitesse((p.NombreTours*c.LongueurPiste/1000.0),r.TempsCourse))) as VitesseMoyenne

from GrandPrix g
join PlanificationGP p
on g.CodeGP = p.CodeGP
join ResultatCourse r
on g.CodeGP = r.CodeGP
join Circuit c
on r.CodeCircuit = c.CodeCircuit
join Pilote pi
on pi.CodePilote = r.CodePilote

where g.CodeGP = 'GPBH'
and r.TempsCourse is not null

group by pi.NomPilote

having CONVERT(DECIMAL(10,3),avg(dbo.CalculVitesse((p.NombreTours*c.LongueurPiste/1000.0),r.TempsCourse))) >= (

select CONVERT(DECIMAL(10,3),avg(dbo.CalculVitesse((p.NombreTours*c.LongueurPiste/1000.0),r.TempsCourse))) as VitesseMoyenne

from GrandPrix g
join PlanificationGP p
on g.CodeGP = p.CodeGP
join ResultatCourse r
on g.CodeGP = r.CodeGP
join Circuit c
on r.CodeCircuit = c.CodeCircuit

where g.CodeGP = 'GPBH'
and r.TempsCourse is not null

group by g.CodeGP)

order by VitesseMoyenne desc