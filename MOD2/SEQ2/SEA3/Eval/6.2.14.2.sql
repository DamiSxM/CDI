USE [GrandPrixF1]
GO

DECLARE @RC int
DECLARE @CodeOperation nvarchar(250)
DECLARE @LibelleOperation nvarchar(50)

declare @Pilote nvarchar(50)
declare @Voiture nvarchar(50)
declare @GrandPrix nvarchar(50)

set @Pilote = 'Bost'
set @Voiture = 'BostMobile'
set @GrandPrix = 'CDI'

set @CodeOperation = 'ADD'
set @LibelleOperation = 'Transaction Pilote '+@Pilote+' Voiture '+@Voiture+' GP '+@GrandPrix

-- À faire : définir des valeurs de paramètres ici.

EXECUTE @RC = [dbo].[Tracker] 
   @CodeOperation
  ,@LibelleOperation
GO


