USE [Securite]
GO

DECLARE	@return_value int,
		@IDRole uniqueidentifier

EXEC	@return_value = [dbo].[psRole_Insert]
		@IDApplication = '366BBD99-F3B3-4B85-B922-06D9C0746E7A',
		@NomRole = N'Utilisateur',
		@DescriptionRole = N'Utilisateur de l''application Intranet AFPA',
		@IDRole = @IDRole OUTPUT

SELECT	@IDRole as N'@IDRole'

SELECT	'Return Value' = @return_value

GO
select * from role