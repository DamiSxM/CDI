select s.NomSociete as Sponsor

from Sponsor s
join Soutenir_Ecurie e
on s.CodeSponsor = e.CodeSponsor
join Soutenir_Pilote p
on s.CodeSponsor = p.CodeSponsor

group by s.NomSociete