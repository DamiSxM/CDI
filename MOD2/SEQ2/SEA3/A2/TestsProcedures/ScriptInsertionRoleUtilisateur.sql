USE [Securite]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[psUtilisateurRole_Insert]
		@IDRole = N'EDA317F6-01DF-49EA-AEA4-7E4487EF8576',
		@IDUtilisateur = N'bost'
		
SELECT	'Return Value' = @return_value

GO
