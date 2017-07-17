USE [Securite]
GO

DECLARE	@return_value int,
		@IDApplication uniqueidentifier

EXEC	@return_value = [dbo].[psApplication_Insert]
		@NomApplication = N'Securite',
		@DescriptionApplication = N'Gestion de la sécurité des accès aux applicatifs de l''AFPA',
		@IDApplication = @IDApplication OUTPUT

SELECT	@IDApplication as N'@IDApplication'

SELECT	'Return Value' = @return_value

SELECT * From Application

GO
