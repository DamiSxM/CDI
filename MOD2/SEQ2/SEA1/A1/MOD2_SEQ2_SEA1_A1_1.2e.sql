select pas#, nom from passager join affectevol
on passager.pas# = affectevol.passager
where prix > 1000


select pas#, nom from passager where pas# in
(select passager from affectevol where prix > 1000)