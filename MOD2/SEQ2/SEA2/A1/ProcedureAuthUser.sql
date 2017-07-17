--Authentification de l’utilisateur
create procedure AuthUser
@login nvarchar(250),
@pass nvarchar(50)
as
begin
	declare @passOut nvarchar(50)
	declare @blocked bit
	declare @nbTry int
	declare @id nvarchar(50)

	select @id = u.IDUtilisateur, @passOut = u.MotPasse, @blocked = u.CompteBloque, @nbTry = u.NbreEssaisInfructueux
	from Utilisateurs u
	where u.NomUtilisateur = @login

	if @id is null --compte inexistant
		return -101
	else if @blocked = 1 --compte locké
		return -102
	else if @pass <> @passOut --pas bon mdp
	begin
		if @nbTry < 2 -- 2 premier mauvais try
			update Utilisateurs
			set NbreEssaisInfructueux = @nbTry+1
			where IDUtilisateur = @id
		else -- 3 ème mauvais try
			update Utilisateurs
			set NbreEssaisInfructueux = @nbTry+1, CompteBloque = 1
			where IDUtilisateur = @id
		return -103
	end
	else
	begin
		update Utilisateurs
		set NbreEssaisInfructueux = 0, DateDerniereConnexion = GETDATE()
		where IDUtilisateur = @id
		return 0
	end
end
go