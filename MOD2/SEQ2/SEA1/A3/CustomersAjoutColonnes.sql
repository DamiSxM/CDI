/*
   Lundi 06 juillet 
   Utilisateur : Bost
   Serveur : localhost
   Base de données : ComptoirAnglais_V1
   Application : Ajout d'une colonne pour comptabiliser le nombre de commandes par client
   et une colonne en prévision de l'activité suivante
*/

BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Customers 
	ADD
	OrdersNumber int NULL,
	IdPays2 int NULL 
GO
ALTER TABLE dbo.Customers SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
