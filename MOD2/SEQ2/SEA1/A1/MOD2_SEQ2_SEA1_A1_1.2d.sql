select distinct pil#, nom from pilote left join vol
on pilote.pil# = vol.pilote
where vol.pilote is null