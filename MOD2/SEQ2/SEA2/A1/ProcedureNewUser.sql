--2.2.2 Procédure de création d’un nouvel utilisateur
create procedure NewUser
@ID nvarchar(50),
@last nvarchar(250),
@first nvarchar(250),
@pass nvarchar(50),
@mail nvarchar(255),
@question nvarchar(255),
@reponse nvarchar(255)
as
begin
	declare @idCustomer nvarchar(50)

	if len(@pass) <= 5 return -101
	else if len(@mail) >= 255 return -102
	else if CHARINDEX('@', @mail) > 64 and CHARINDEX('@', @mail) < 254 or CHARINDEX('@', @mail) = len(@mail) or CHARINDEX('@', @mail) <= 1
		return -102
	else
	begin
		select @idCustomer = c.CustomerID
		from Customers c
		where c.ContactName = @last + ' ' + @first

		insert into Utilisateurs (IDUtilisateur, NomUtilisateur, PrenomUtilisateur, MotPasse, NbreEssaisInfructueux, CompteBloque, CompteMessagerie, Question, Reponse, CustomerID)
		values (@ID, @last, @first, @pass, 0, 0, @mail, @question, @reponse, @idCustomer)
	end
end
go