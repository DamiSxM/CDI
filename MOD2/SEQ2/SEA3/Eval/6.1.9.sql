select f.RaisonSocialeFournisseur as Fournisseur, count(e.CodeFournisseurPneumatiques) as NombreEcuries

from Fournisseur f
left join Ecurie e
on f.CodeFournisseurPneumatiques = e.CodeFournisseurPneumatiques

group by f.RaisonSocialeFournisseur