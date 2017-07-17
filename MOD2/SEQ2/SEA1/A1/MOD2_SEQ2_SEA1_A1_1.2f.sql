select distinct nom from Pilote
join avion on Pilote.Ville = avion.Localisation
where Marque = 'AIRBUS'


select distinct nom from Pilote where Ville in
(select Localisation from avion where Marque = 'AIRBUS')
