select nom from pilote where pil# in
(select pilote from vol where villedepart = 'Nice' or villedepart = 'Marseille')

select pil# from pilote intersect
(select pilote from vol where villedepart = 'Nice' or villedepart = 'Marseille')