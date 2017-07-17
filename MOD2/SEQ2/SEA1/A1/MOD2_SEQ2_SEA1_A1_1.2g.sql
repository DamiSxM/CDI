select P1.Nom, P1.Ville, P2.Nom, P2.Ville
from Pilote P1
join Pilote P2
on P1.Ville = P2.Ville
where P1.Nom != P2.Nom