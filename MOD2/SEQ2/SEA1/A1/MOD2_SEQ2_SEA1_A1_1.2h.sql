--Quels sont les noms des pilotes qui habitent dans la ville de localisation d'un Airbus ? ME & MP

select distinct Nom, Ville, Localisation from Pilote
join vol on Pilote.Pil# = vol.Pilote
join avion on vol.Avion = avion.Av#
where avion.Localisation = Pilote.Ville
and Marque = 'AIRBUS'

select distinct Nom, Ville from Pilote
where Pil# in
(select Pilote from vol where Avion in
(select Av# from avion where Marque = 'AIRBUS' and Localisation = Pilote.Ville))