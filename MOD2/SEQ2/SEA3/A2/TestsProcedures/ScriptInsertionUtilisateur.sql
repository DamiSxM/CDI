USE [Securite]
GO
DECLARE	@return_value int

EXEC	@return_value = [dbo].[psUtilisateur_Insert]
		@IDUtilisateur = N'Bost',
		@NomUtilisateur = N'Bost',
		@PrenomUtilisateur = N'Vincent',
		@MotPasse = N'vinceafpa',
		@CompteMessagerie = N'vincent.bost@afpa.fr',
		@Question = 'Prénom de ma jeune soeur',
		@Reponse = 'Sarah',
		@NbreEssaisInfructueux = 0,
		@CompteBloque = 'true'

SELECT	'Return Value' = @return_value;
Print  @return_value;
GO
