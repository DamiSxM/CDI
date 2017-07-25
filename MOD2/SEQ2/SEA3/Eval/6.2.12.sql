select g.NomGrandPrix as GrandPrix, CONVERT(DECIMAL(10,3),avg(dbo.CalculVitesse((c.LongueurPiste*p.NombreTours)/1000.0,r.TempsCourse))) as VitesseMoyenne

from GrandPrix g
join PlanificationGP p
on g.CodeGP = p.CodeGP
join ResultatCourse r
on g.CodeGP = r.CodeGP
join Circuit c
on r.CodeCircuit = c.CodeCircuit

where r.TempsCourse is not null

group by g.NomGrandPrix