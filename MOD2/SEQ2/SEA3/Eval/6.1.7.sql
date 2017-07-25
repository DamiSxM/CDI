select p.NomPilote as Pilote

from Pilote p

where p.CodePilote not in (select s.CodePilote from Soutenir_Pilote s)

order by Pilote