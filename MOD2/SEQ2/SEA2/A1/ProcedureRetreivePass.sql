--2.2.3 Proc�dure de restitution de mot de passe
--Le mot de passe est restitu� via un param�tre en sortie si la r�ponse communiqu�e est identique � la
--r�ponse stock�e dans la base pour cet utilisateur. Vous ne devez pas tenir compte des espaces
--pr�sents dans les cha�nes.
--Aucun mot de passe ne peut �tre restitu� si le compte est bloqu�. Code erreur -101.

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