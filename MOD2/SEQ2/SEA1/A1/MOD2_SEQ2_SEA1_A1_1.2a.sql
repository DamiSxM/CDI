select Pil#, nom, Av#, marque, typeavion, villedepart, villearrivee, heurearrivee
from Pilote join vol
on pilote.Pil# = vol.pilote
join avion
on avion.Av# = vol.avion
 