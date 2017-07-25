select g.NomGrandPrix as Nom, p.DateGP as Date, c.NomCircuit as Circuit, CONVERT(DECIMAL(10,3),((p.NombreTours * c.LongueurPiste + 0.0)/1000)) as Distance

from GrandPrix g
inner join PlanificationGP p
on g.CodeGP = p.CodeGP
inner join Circuit c
on p.CodeCircuit = c.CodeCircuit

order by Date