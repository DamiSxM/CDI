
select pil#, nom from pilote where pil# not in (select pilote from vol where vol# = 100)

select pil# from pilote
except
select pilote from vol where vol# = 100