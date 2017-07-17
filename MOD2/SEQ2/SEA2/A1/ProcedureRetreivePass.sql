--2.2.3 Procédure de restitution de mot de passe
--Le mot de passe est restitué via un paramètre en sortie si la réponse communiquée est identique à la
--réponse stockée dans la base pour cet utilisateur. Vous ne devez pas tenir compte des espaces
--présents dans les chaînes.
--Aucun mot de passe ne peut être restitué si le compte est bloqué. Code erreur -101.

ALTER procedure [dbo].[RetreivePass]
@id nvarchar(50),
@reponse nvarchar(255),
@pass nvarchar(50) out

as
begin

select @pass = MotPasse
from Utilisateurs
where IDUtilisateur = @id and Reponse = @reponse

if @pass is null
	return -101

end
go