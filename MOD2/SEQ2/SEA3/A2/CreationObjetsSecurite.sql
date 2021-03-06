USE [Securite]
GO
/****** Object:  Table [dbo].[Utilisateur]    Script Date: 07/17/2017 08:33:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Utilisateur](
	[IDUtilisateur] [char](10) NOT NULL,
	[NomUtilisateur] [nvarchar](250) NOT NULL,
	[PrenomUtilisateur] [nvarchar](250) NOT NULL,
	[MotPasse] [nvarchar](50) NOT NULL,
	[CompteMessagerie] [nvarchar](255) NOT NULL,
	[Question] [nvarchar](255) NOT NULL,
	[Reponse] [nvarchar](255) NOT NULL,
	[NbreEssaisInfructueux] [tinyint] NOT NULL,
	[CompteBloque] [bit] NOT NULL,
	[DateDerniereConnexion] [datetime] NULL,
 CONSTRAINT [PK_Utilisateur] PRIMARY KEY CLUSTERED 
(
	[IDUtilisateur] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Utilisateur] ([IDUtilisateur], [NomUtilisateur], [PrenomUtilisateur], [MotPasse], [CompteMessagerie], [Question], [Reponse], [NbreEssaisInfructueux], [CompteBloque], [DateDerniereConnexion]) VALUES (N'Bost      ', N'Bost', N'Vincent', N'vince', N'vincent.bost@afpa.fr', N'Prénom de ma jeune soeur', N'Sarah', 3, 1, CAST(0x0000A4E001705585 AS DateTime))
/****** Object:  Table [dbo].[Application]    Script Date: 07/17/2017 08:33:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Application](
	[IDApplication] [uniqueidentifier] NOT NULL,
	[NomApplication] [nvarchar](255) NOT NULL,
	[DescriptionApplication] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Application] PRIMARY KEY CLUSTERED 
(
	[IDApplication] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Application] ([IDApplication], [NomApplication], [DescriptionApplication]) VALUES (N'366bbd99-f3b3-4b85-b922-06d9c0746e7a', N'AFPA Net', N'Application de gestion des activités de formation')
INSERT [dbo].[Application] ([IDApplication], [NomApplication], [DescriptionApplication]) VALUES (N'6eb280a6-c5db-4d17-ba7c-b67e2db69cfa', N'Securite', N'Gestion de la sécurité des accès aux applicatifs de l''AFPA')
/****** Object:  StoredProcedure [dbo].[psApplication_Insert]    Script Date: 07/17/2017 08:33:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[psApplication_Insert]
-- =============================================
-- Author:		Bost
-- Create date: Juillet 2014
-- Description:	Création d'une référence d'application
-- =============================================
    @NomApplication      nvarchar(255),
    @DescriptionApplication nvarchar(255),
    @IDApplication        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @IDApplication = IDApplication FROM Application 
    WHERE LOWER(@NomApplication) = LOWER(NomApplication)

    IF(@IDApplication IS NULL)
    BEGIN
        
            SELECT  @IDApplication = NEWID()
            INSERT  Application (IdApplication, NomApplication, DescriptionApplication)
            VALUES  (@IDApplication,@NomApplication,@DescriptionApplication)
    END     
END
GO
/****** Object:  Table [dbo].[Utilisateur_Application]    Script Date: 07/17/2017 08:33:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Utilisateur_Application](
	[IDUtilisateur] [char](10) NOT NULL,
	[IDApplication] [uniqueidentifier] NOT NULL,
	[IDROle] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Utilisateur_Application] PRIMARY KEY CLUSTERED 
(
	[IDUtilisateur] ASC,
	[IDApplication] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Utilisateur_Application] ([IDUtilisateur], [IDApplication], [IDROle]) VALUES (N'Bost      ', N'6eb280a6-c5db-4d17-ba7c-b67e2db69cfa', N'eda317f6-01df-49ea-aea4-7e4487ef8576')
/****** Object:  Table [dbo].[Role]    Script Date: 07/17/2017 08:33:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[IDRole] [uniqueidentifier] NOT NULL,
	[IDApplication] [uniqueidentifier] NOT NULL,
	[NomRole] [varchar](255) NOT NULL,
	[DescriptionRole] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[IDRole] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Role] ([IDRole], [IDApplication], [NomRole], [DescriptionRole]) VALUES (N'eda317f6-01df-49ea-aea4-7e4487ef8576', N'6eb280a6-c5db-4d17-ba7c-b67e2db69cfa', N'Administrateur', N'Administrateur de la sécurité des accès')
INSERT [dbo].[Role] ([IDRole], [IDApplication], [NomRole], [DescriptionRole]) VALUES (N'f415a787-38ef-42ab-b75e-88b202a4ff35', N'366bbd99-f3b3-4b85-b922-06d9c0746e7a', N'Utilisateur', N'Utilisateur de l''application Intranet AFPA')
/****** Object:  StoredProcedure [dbo].[psUtilisateur_Update]    Script Date: 07/17/2017 08:33:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[psUtilisateur_Update]
	( @IDUtilisateur             	char(10)
	, @NomUtilisateur            	nvarchar(250)
	, @PrenomUtilisateur         	nvarchar(250)
	, @MotPasse                  	nvarchar(50)
	, @CompteMessagerie          	nvarchar(255)
	, @Question                  	nvarchar(255) = NULL
	, @Reponse                   	nvarchar(255) = NULL
	, @NbreEssaisInfructueux        tinyint
	, @CompteBloque         	bit )

as

if not exists (select 1 from dbo.Utilisateur
where IDUtilisateur = @IDUtilisateur ) 
	return -2

update dbo.Utilisateur
	set NomUtilisateur = @NomUtilisateur
	  , PrenomUtilisateur = @PrenomUtilisateur
	  , MotPasse = @MotPasse
	  , CompteMessagerie = @CompteMessagerie
	  , Question = @Question
	  , Reponse = @Reponse
	  , NbreEssaisInfructueux = @NbreEssaisInfructueux
	  , CompteBloque = @CompteBloque
where IDUtilisateur = @IDUtilisateur


return 0
GO
/****** Object:  StoredProcedure [dbo].[psUtilisateur_SelectByID]    Script Date: 07/17/2017 08:33:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[psUtilisateur_SelectByID]
	( @IDUtilisateur             	char(10)
 )
as

select   IDUtilisateur, NomUtilisateur, PrenomUtilisateur, MotPasse, CompteMessagerie, Question, Reponse, NbreEssaisInfructueux, CompteBloque, DateDerniereConnexion
FROM     Utilisateur
where IDUtilisateur = @IDUtilisateur
GO
/****** Object:  StoredProcedure [dbo].[psUtilisateur_SelectAll]    Script Date: 07/17/2017 08:33:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[psUtilisateur_SelectAll]
as

select   IDUtilisateur, NomUtilisateur, PrenomUtilisateur, MotPasse, CompteMessagerie, Question, Reponse, NbreEssaisInfructueux, CompteBloque, DateDerniereConnexion
FROM         dbo.Utilisateur
GO
/****** Object:  StoredProcedure [dbo].[psUtilisateur_Insert]    Script Date: 07/17/2017 08:33:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[psUtilisateur_Insert]
	( @IDUtilisateur             	char(10)
	, @NomUtilisateur            	nvarchar(250)
	, @PrenomUtilisateur         	nvarchar(250)
	, @MotPasse                  	nvarchar(50)
	, @CompteMessagerie          	nvarchar(255)
	, @Question                  	nvarchar(255) = NULL
	, @Reponse                   	nvarchar(255) = NULL
	, @NbreEssaisInfructueux        tinyint
	, @CompteBloque         	bit )
as

SET nocount on;

if exists (select 1 from dbo.Utilisateur
where IDUtilisateur = @IDUtilisateur ) 
	return -1

if LEN(@MotPasse)<6 return -2 -- Longueur du mot de passe < 6
if @CompteMessagerie not like '%@%' return -3 -- Adresse invalide

SET nocount OFF;
insert dbo.Utilisateur
	( IDUtilisateur
	, NomUtilisateur
	, PrenomUtilisateur
	, MotPasse
	, CompteMessagerie
	, Question
	, Reponse
	, NbreEssaisInfructueux
	, CompteBloque
) values (
	@IDUtilisateur
	, @NomUtilisateur
	, @PrenomUtilisateur
	, @MotPasse
	, @CompteMessagerie
	, @Question
	, @Reponse
	, @NbreEssaisInfructueux
	, @CompteBloque
)

return 0
GO
/****** Object:  StoredProcedure [dbo].[psUtilisateur_Authentifier]    Script Date: 07/17/2017 08:33:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bost
-- Create date: Juillet 2014
-- Description:	Authentification des utilisateurs
-- =============================================
CREATE PROCEDURE [dbo].[psUtilisateur_Authentifier] 
-- Paramètres Entrée : IDUtilisateur, Mot de Passe, ID rôle, Nom de l'application
-- Sortie : Nom, Prénom 
-- Valeurs Retour : 0 OK, 
-- -101 Utilisateur inconnu
-- -102 Compte utilisateur bloqué
-- -103 Mot de passe invalide
-- -104 Application inexistante
-- -105 Utilisateur non inscrit dans le rôle

@IDUtilisateur as char(10),
@MotPasseClair as nvarchar(50)=null,
@NomApplication as nvarchar(255),
@IDRole as uniqueidentifier output
AS
BEGIN
	DECLARE @IDUser char(10), @MotPasse nvarchar(50), @NbreEssaisInfructueux as Int,
	@CompteBloque as bit
	DECLARE @IDApplication uniqueidentifier
	
	SET NOCOUNT ON;
	-- Récupération des valeurs du compte
	SELECT @IDUser=IDUtilisateur,@MotPasse = MotPasse,@NbreEssaisInfructueux= NbreEssaisInfructueux,@CompteBloque=CompteBloque FROM Utilisateur WHERE IDUtilisateur=@Idutilisateur
	-- Récupération des valeurs de l'application
	SELECT @IDApplication= IDApplication from Application where LOWER(@NomApplication)=LOWER(NomApplication);
	
	IF @IDUser is null RETURN -101; -- Utilisateur inconnu
	
	IF @IDApplication is null RETURN -104; -- Application inconnue
	
	-- Vérification défini comme utilisateur de l'application
	-- récupération du rôle
	select @IDRole=IDrole FROM
	 Utilisateur_Application 
	where @IDUtilisateur = IDUtilisateur AND IDApplication = @IDApplication
	IF @IDRole is null RETURN -105; -- Utilisateur sans accès à cette application
		
	IF @CompteBloque = 'true' RETURN -102	 -- Compte bloqué
	
	IF @MotPasseClair is null OR @MotPasse != @MotPasseClair 
	BEGIN
		SET @NbreEssaisInfructueux += 1
		IF @NbreEssaisInfructueux >= 3 SET @CompteBloque= 'true'
		UPDATE Utilisateur 
		SET CompteBloque=@CompteBloque,NbreEssaisInfructueux=@NbreEssaisInfructueux
		WHERE IDUtilisateur=@Idutilisateur
		RETURN -103 -- Mot Passe invalide
	END
	
-- Mise à jour des informations de connexion
SET NOCOUNT OFF;
UPDATE UTILISATEUR
SET NbreEssaisInfructueux=0, DateDerniereConnexion= GETDATE()
WHERE IDUtilisateur = @IDUtilisateur;
RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[psRole_Insert]    Script Date: 07/17/2017 08:33:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[psRole_Insert]
-- =============================================
-- Author:		Bost
-- Create date: Juillet 2014
-- Description:	Insertion d'un nouveau rôle
-- =============================================
	( @IDApplication           	uniqueidentifier
	, @NomRole                 	varchar(255)
	, @DescriptionRole         	varchar(255)
	,@IDRole                  	uniqueidentifier output
 )
as

if exists (select 1 from dbo.Role
where NomRole = @NomRole AND IDApplication = @IDApplication ) 
	return -1

set @IDRole =  NEWID();
insert dbo.Role
	( IDRole
	, IDApplication
	, NomRole
	, DescriptionRole
) values (@IDRole
	, @IDApplication
	, @NomRole
	, @DescriptionRole
)

return 0
GO
/****** Object:  ForeignKey [FK_Role_Application]    Script Date: 07/17/2017 08:33:41 ******/
ALTER TABLE [dbo].[Role]  WITH CHECK ADD  CONSTRAINT [FK_Role_Application] FOREIGN KEY([IDApplication])
REFERENCES [dbo].[Application] ([IDApplication])
GO
ALTER TABLE [dbo].[Role] CHECK CONSTRAINT [FK_Role_Application]
GO
/****** Object:  ForeignKey [FK_Utilisateur_Application_Application]    Script Date: 07/17/2017 08:33:41 ******/
ALTER TABLE [dbo].[Utilisateur_Application]  WITH CHECK ADD  CONSTRAINT [FK_Utilisateur_Application_Application] FOREIGN KEY([IDApplication])
REFERENCES [dbo].[Application] ([IDApplication])
GO
ALTER TABLE [dbo].[Utilisateur_Application] CHECK CONSTRAINT [FK_Utilisateur_Application_Application]
GO
/****** Object:  ForeignKey [FK_Utilisateur_Application_Utilisateur]    Script Date: 07/17/2017 08:33:41 ******/
ALTER TABLE [dbo].[Utilisateur_Application]  WITH CHECK ADD  CONSTRAINT [FK_Utilisateur_Application_Utilisateur] FOREIGN KEY([IDUtilisateur])
REFERENCES [dbo].[Utilisateur] ([IDUtilisateur])
GO
ALTER TABLE [dbo].[Utilisateur_Application] CHECK CONSTRAINT [FK_Utilisateur_Application_Utilisateur]
GO
