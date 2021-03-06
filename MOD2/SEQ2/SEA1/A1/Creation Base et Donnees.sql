USE [VolAvion] 
GO
CREATE TABLE [dbo].[Pilote](
	[Pil#] [smallint] IDENTITY(1,1) NOT NULL,
	[Nom] [varchar](10) NOT NULL,
	[Ville] [varchar](100) NOT NULL,
	[DateNaissance] [date] NULL,
	[DateDebutActivite] [date] NULL,
	[DateFinActivite] [date] NULL,
	[SalaireBrut] [decimal](9, 2) NULL,
 CONSTRAINT [PK_pilote_1__11] PRIMARY KEY CLUSTERED 
(
	[Pil#] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Pilote] ON
INSERT [dbo].[Pilote] ([Pil#], [Nom], [Ville], [DateNaissance], [DateDebutActivite], [DateFinActivite], [SalaireBrut]) VALUES (1, N'Tanguy', N'Tours', CAST(0xC6FF0A00 AS Date), CAST(0x4C320B00 AS Date), NULL, CAST(7000.00 AS Decimal(9, 2)))
INSERT [dbo].[Pilote] ([Pil#], [Nom], [Ville], [DateNaissance], [DateDebutActivite], [DateFinActivite], [SalaireBrut]) VALUES (2, N'Morillon', N'Paris', CAST(0x18EA0A00 AS Date), CAST(0xE2150B00 AS Date), NULL, CAST(8000.00 AS Decimal(9, 2)))
INSERT [dbo].[Pilote] ([Pil#], [Nom], [Ville], [DateNaissance], [DateDebutActivite], [DateFinActivite], [SalaireBrut]) VALUES (3, N'Roger', N'Grenoble                  ', CAST(0x82F50A00 AS Date), CAST(0x712F0B00 AS Date), NULL, CAST(7000.00 AS Decimal(9, 2)))
INSERT [dbo].[Pilote] ([Pil#], [Nom], [Ville], [DateNaissance], [DateDebutActivite], [DateFinActivite], [SalaireBrut]) VALUES (4, N'Robert', N'Nantes                    ', CAST(0x5AE20A00 AS Date), CAST(0xA21A0B00 AS Date), NULL, CAST(7000.00 AS Decimal(9, 2)))
INSERT [dbo].[Pilote] ([Pil#], [Nom], [Ville], [DateNaissance], [DateDebutActivite], [DateFinActivite], [SalaireBrut]) VALUES (5, N'Michel', N'Paris                     ', CAST(0x3EE70A00 AS Date), CAST(0x07240B00 AS Date), NULL, CAST(7000.00 AS Decimal(9, 2)))
INSERT [dbo].[Pilote] ([Pil#], [Nom], [Ville], [DateNaissance], [DateDebutActivite], [DateFinActivite], [SalaireBrut]) VALUES (7, N'Bertrand', N'Lyon                      ', CAST(0x89E10A00 AS Date), CAST(0xE8120B00 AS Date), NULL, CAST(7200.00 AS Decimal(9, 2)))
INSERT [dbo].[Pilote] ([Pil#], [Nom], [Ville], [DateNaissance], [DateDebutActivite], [DateFinActivite], [SalaireBrut]) VALUES (8, N'Hervé', N'Moscou                    ', CAST(0xF6E20A00 AS Date), CAST(0x7B110B00 AS Date), NULL, CAST(7300.00 AS Decimal(9, 2)))
INSERT [dbo].[Pilote] ([Pil#], [Nom], [Ville], [DateNaissance], [DateDebutActivite], [DateFinActivite], [SalaireBrut]) VALUES (9, N'Luc', N'Paris                     ', CAST(0xF6E20A00 AS Date), CAST(0xA10E0B00 AS Date), NULL, CAST(8250.00 AS Decimal(9, 2)))
INSERT [dbo].[Pilote] ([Pil#], [Nom], [Ville], [DateNaissance], [DateDebutActivite], [DateFinActivite], [SalaireBrut]) VALUES (19, N'Driss', N'Paris                     ', CAST(0x33E30A00 AS Date), CAST(0x12170B00 AS Date), NULL, CAST(8750.00 AS Decimal(9, 2)))
INSERT [dbo].[Pilote] ([Pil#], [Nom], [Ville], [DateNaissance], [DateDebutActivite], [DateFinActivite], [SalaireBrut]) VALUES (20, N'Sylvain', N'Gardignac                 ', CAST(0xBFE40A00 AS Date), CAST(0x07240B00 AS Date), NULL, CAST(8000.00 AS Decimal(9, 2)))
INSERT [dbo].[Pilote] ([Pil#], [Nom], [Ville], [DateNaissance], [DateDebutActivite], [DateFinActivite], [SalaireBrut]) VALUES (21, N'Lucien', N'Gardignac                 ', CAST(0x26E90A00 AS Date), CAST(0xF81D0B00 AS Date), NULL, CAST(7500.00 AS Decimal(9, 2)))
INSERT [dbo].[Pilote] ([Pil#], [Nom], [Ville], [DateNaissance], [DateDebutActivite], [DateFinActivite], [SalaireBrut]) VALUES (29, N'Laverdure', N'Toulouse                  ', CAST(0x7F070B00 AS Date), CAST(0x4D320B00 AS Date), NULL, CAST(6500.00 AS Decimal(9, 2)))
INSERT [dbo].[Pilote] ([Pil#], [Nom], [Ville], [DateNaissance], [DateDebutActivite], [DateFinActivite], [SalaireBrut]) VALUES (30, N'Bost', N'Brive', CAST(0xDCED0A00 AS Date), CAST(0xEA1E0B00 AS Date), NULL, CAST(8000.00 AS Decimal(9, 2)))
SET IDENTITY_INSERT [dbo].[Pilote] OFF
/****** Object:  Table [dbo].[Passager]    Script Date: 06/30/2015 08:24:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Passager](
	[Pas#] [int] NOT NULL,
	[Nom] [varchar](20) NOT NULL,
	[Prenom] [varchar](20) NOT NULL,
	[Ville] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Passager] PRIMARY KEY NONCLUSTERED 
(
	[Pas#] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Passager] ([Pas#], [Nom], [Prenom], [Ville]) VALUES (1, N'MAUSSE', N'Fabien', N'Toulouse')
INSERT [dbo].[Passager] ([Pas#], [Nom], [Prenom], [Ville]) VALUES (2, N'MERLHIOT', N'Pascal', N'Paris')
INSERT [dbo].[Passager] ([Pas#], [Nom], [Prenom], [Ville]) VALUES (3, N'JEAN', N'Patrick', N'Nice')
INSERT [dbo].[Passager] ([Pas#], [Nom], [Prenom], [Ville]) VALUES (4, N'PEREIRA', N'Joao', N'Limoge')
INSERT [dbo].[Passager] ([Pas#], [Nom], [Prenom], [Ville]) VALUES (5, N'BOULOUC', N'Cathy', N'Paris')
INSERT [dbo].[Passager] ([Pas#], [Nom], [Prenom], [Ville]) VALUES (6, N'AVENTIS', N'Sophie', N'Grenoble')
INSERT [dbo].[Passager] ([Pas#], [Nom], [Prenom], [Ville]) VALUES (7, N'BARTEAU', N'Frédéric', N'Lyon')
INSERT [dbo].[Passager] ([Pas#], [Nom], [Prenom], [Ville]) VALUES (8, N'GLOCK', N'Gilles', N'Fort de France')
INSERT [dbo].[Passager] ([Pas#], [Nom], [Prenom], [Ville]) VALUES (9, N'BOST', N'Vincent', N'Sainte Féréole')
/****** Object:  Table [dbo].[avion]    Script Date: 06/30/2015 08:24:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[avion](
	[Av#] [smallint] NOT NULL,
	[Marque] [varchar](15) NOT NULL,
	[TypeAvion] [varchar](15) NOT NULL,
	[Capacite] [smallint] NOT NULL,
	[Localisation] [varchar](100) NOT NULL,
	[DateMiseEnService] [date] NULL,
 CONSTRAINT [PK_avion] PRIMARY KEY NONCLUSTERED 
(
	[Av#] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE CLUSTERED INDEX [Cleprimaire] ON [dbo].[avion] 
(
	[Av#] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[avion] ([Av#], [Marque], [TypeAvion], [Capacite], [Localisation], [DateMiseEnService]) VALUES (100, N'AIRBUS', N'A380-800', 525, N'Nice', CAST(0xDA320B00 AS Date))
INSERT [dbo].[avion] ([Av#], [Marque], [TypeAvion], [Capacite], [Localisation], [DateMiseEnService]) VALUES (101, N'BOEING', N'B777-300', 365, N'Paris', CAST(0x472B0B00 AS Date))
INSERT [dbo].[avion] ([Av#], [Marque], [TypeAvion], [Capacite], [Localisation], [DateMiseEnService]) VALUES (102, N'AIRBUS', N'A321-111', 185, N'Toulouse', CAST(0x62350B00 AS Date))
INSERT [dbo].[avion] ([Av#], [Marque], [TypeAvion], [Capacite], [Localisation], [DateMiseEnService]) VALUES (103, N'ATR', N'ATR42-300', 48, N'Toulouse', CAST(0x39350B00 AS Date))
INSERT [dbo].[avion] ([Av#], [Marque], [TypeAvion], [Capacite], [Localisation], [DateMiseEnService]) VALUES (104, N'BOEING', N'B777-200', 440, N'Paris', CAST(0xA82F0B00 AS Date))
INSERT [dbo].[avion] ([Av#], [Marque], [TypeAvion], [Capacite], [Localisation], [DateMiseEnService]) VALUES (105, N'AIRBUS', N'A321-211', 199, N'Grenoble', CAST(0xA7390B00 AS Date))
INSERT [dbo].[avion] ([Av#], [Marque], [TypeAvion], [Capacite], [Localisation], [DateMiseEnService]) VALUES (106, N'ATR', N'ATR42-300', 48, N'Paris', CAST(0xAC360B00 AS Date))
INSERT [dbo].[avion] ([Av#], [Marque], [TypeAvion], [Capacite], [Localisation], [DateMiseEnService]) VALUES (107, N'BOEING', N'B777-300', 450, N'Lyon', CAST(0x4D320B00 AS Date))
INSERT [dbo].[avion] ([Av#], [Marque], [TypeAvion], [Capacite], [Localisation], [DateMiseEnService]) VALUES (108, N'BOEING', N'B737-600', 110, N'Nantes', CAST(0x33340B00 AS Date))
INSERT [dbo].[avion] ([Av#], [Marque], [TypeAvion], [Capacite], [Localisation], [DateMiseEnService]) VALUES (109, N'AIRBUS', N'320-212', 164, N'Bastia', CAST(0x75250B00 AS Date))
INSERT [dbo].[avion] ([Av#], [Marque], [TypeAvion], [Capacite], [Localisation], [DateMiseEnService]) VALUES (120, N'ATR', N'ATR72-200', 74, N'Grenoble', CAST(0x5D350B00 AS Date))
INSERT [dbo].[avion] ([Av#], [Marque], [TypeAvion], [Capacite], [Localisation], [DateMiseEnService]) VALUES (150, N'AIRBUS', N'A321-111', 181, N'Brive', CAST(0x19380B00 AS Date))
INSERT [dbo].[avion] ([Av#], [Marque], [TypeAvion], [Capacite], [Localisation], [DateMiseEnService]) VALUES (151, N'BOEING', N'B737-700', 149, N'Bastia', CAST(0x8A390B00 AS Date))
INSERT [dbo].[avion] ([Av#], [Marque], [TypeAvion], [Capacite], [Localisation], [DateMiseEnService]) VALUES (155, N'AIRBUS', N'A320-214', 180, N'Toulouse', CAST(0x38380B00 AS Date))
INSERT [dbo].[avion] ([Av#], [Marque], [TypeAvion], [Capacite], [Localisation], [DateMiseEnService]) VALUES (160, N'AIRBUS', N'A380-800', 525, N'Paris', CAST(0xB7380B00 AS Date))
INSERT [dbo].[avion] ([Av#], [Marque], [TypeAvion], [Capacite], [Localisation], [DateMiseEnService]) VALUES (170, N'AIRBUS', N'A380-800', 601, N'Bruxelles', CAST(0x053A0B00 AS Date))
INSERT [dbo].[avion] ([Av#], [Marque], [TypeAvion], [Capacite], [Localisation], [DateMiseEnService]) VALUES (171, N'AIRBUS', N'A380-800', 450, N'Paris', CAST(0x8D390B00 AS Date))
/****** Object:  Table [dbo].[vol]    Script Date: 06/30/2015 08:24:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[vol](
	[Vol#] [smallint] NOT NULL,
	[Avion] [smallint] NOT NULL,
	[Pilote] [smallint] NOT NULL,
	[VilleDepart] [varchar](26) NOT NULL,
	[VilleArrivee] [varchar](26) NOT NULL,
	[HeureDepart] [decimal](5, 2) NOT NULL,
	[HeureArrivee] [decimal](5, 2) NOT NULL,
 CONSTRAINT [PK_vol_1__14] PRIMARY KEY CLUSTERED 
(
	[Vol#] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[vol] ([Vol#], [Avion], [Pilote], [VilleDepart], [VilleArrivee], [HeureDepart], [HeureArrivee]) VALUES (100, 100, 1, N'Nice', N'Paris', CAST(7.20 AS Decimal(5, 2)), CAST(9.00 AS Decimal(5, 2)))
INSERT [dbo].[vol] ([Vol#], [Avion], [Pilote], [VilleDepart], [VilleArrivee], [HeureDepart], [HeureArrivee]) VALUES (101, 100, 2, N'Paris', N'Toulouse', CAST(11.20 AS Decimal(5, 2)), CAST(12.00 AS Decimal(5, 2)))
INSERT [dbo].[vol] ([Vol#], [Avion], [Pilote], [VilleDepart], [VilleArrivee], [HeureDepart], [HeureArrivee]) VALUES (102, 101, 1, N'Paris', N'Nice', CAST(12.35 AS Decimal(5, 2)), CAST(14.00 AS Decimal(5, 2)))
INSERT [dbo].[vol] ([Vol#], [Avion], [Pilote], [VilleDepart], [VilleArrivee], [HeureDepart], [HeureArrivee]) VALUES (103, 105, 3, N'Grenoble', N'Toulouse', CAST(9.00 AS Decimal(5, 2)), CAST(11.00 AS Decimal(5, 2)))
INSERT [dbo].[vol] ([Vol#], [Avion], [Pilote], [VilleDepart], [VilleArrivee], [HeureDepart], [HeureArrivee]) VALUES (104, 105, 3, N'Toulouse', N'Grenoble', CAST(17.00 AS Decimal(5, 2)), CAST(19.00 AS Decimal(5, 2)))
INSERT [dbo].[vol] ([Vol#], [Avion], [Pilote], [VilleDepart], [VilleArrivee], [HeureDepart], [HeureArrivee]) VALUES (105, 107, 7, N'Lyon', N'Paris', CAST(6.00 AS Decimal(5, 2)), CAST(7.00 AS Decimal(5, 2)))
INSERT [dbo].[vol] ([Vol#], [Avion], [Pilote], [VilleDepart], [VilleArrivee], [HeureDepart], [HeureArrivee]) VALUES (106, 109, 8, N'Bastia', N'Paris', CAST(10.00 AS Decimal(5, 2)), CAST(13.00 AS Decimal(5, 2)))
INSERT [dbo].[vol] ([Vol#], [Avion], [Pilote], [VilleDepart], [VilleArrivee], [HeureDepart], [HeureArrivee]) VALUES (107, 106, 9, N'Paris', N'Brive', CAST(7.00 AS Decimal(5, 2)), CAST(8.00 AS Decimal(5, 2)))
INSERT [dbo].[vol] ([Vol#], [Avion], [Pilote], [VilleDepart], [VilleArrivee], [HeureDepart], [HeureArrivee]) VALUES (108, 106, 9, N'Brive', N'Paris', CAST(19.00 AS Decimal(5, 2)), CAST(20.00 AS Decimal(5, 2)))
INSERT [dbo].[vol] ([Vol#], [Avion], [Pilote], [VilleDepart], [VilleArrivee], [HeureDepart], [HeureArrivee]) VALUES (109, 107, 7, N'Paris', N'Lyon', CAST(18.00 AS Decimal(5, 2)), CAST(19.00 AS Decimal(5, 2)))
INSERT [dbo].[vol] ([Vol#], [Avion], [Pilote], [VilleDepart], [VilleArrivee], [HeureDepart], [HeureArrivee]) VALUES (110, 102, 2, N'Toulouse', N'Paris', CAST(15.00 AS Decimal(5, 2)), CAST(18.00 AS Decimal(5, 2)))
INSERT [dbo].[vol] ([Vol#], [Avion], [Pilote], [VilleDepart], [VilleArrivee], [HeureDepart], [HeureArrivee]) VALUES (111, 108, 5, N'Nice', N'Paris', CAST(14.00 AS Decimal(5, 2)), CAST(16.00 AS Decimal(5, 2)))
INSERT [dbo].[vol] ([Vol#], [Avion], [Pilote], [VilleDepart], [VilleArrivee], [HeureDepart], [HeureArrivee]) VALUES (112, 109, 2, N'Bastia', N'Paris', CAST(10.00 AS Decimal(5, 2)), CAST(13.00 AS Decimal(5, 2)))
INSERT [dbo].[vol] ([Vol#], [Avion], [Pilote], [VilleDepart], [VilleArrivee], [HeureDepart], [HeureArrivee]) VALUES (113, 105, 2, N'Toulouse', N'Grenoble', CAST(17.00 AS Decimal(5, 2)), CAST(19.00 AS Decimal(5, 2)))
INSERT [dbo].[vol] ([Vol#], [Avion], [Pilote], [VilleDepart], [VilleArrivee], [HeureDepart], [HeureArrivee]) VALUES (114, 150, 2, N'Paris', N'Marseille', CAST(10.00 AS Decimal(5, 2)), CAST(12.00 AS Decimal(5, 2)))
INSERT [dbo].[vol] ([Vol#], [Avion], [Pilote], [VilleDepart], [VilleArrivee], [HeureDepart], [HeureArrivee]) VALUES (115, 155, 2, N'Paris', N'Lille', CAST(11.00 AS Decimal(5, 2)), CAST(12.00 AS Decimal(5, 2)))
INSERT [dbo].[vol] ([Vol#], [Avion], [Pilote], [VilleDepart], [VilleArrivee], [HeureDepart], [HeureArrivee]) VALUES (116, 101, 4, N'Nice', N'Nantes', CAST(17.00 AS Decimal(5, 2)), CAST(19.00 AS Decimal(5, 2)))
INSERT [dbo].[vol] ([Vol#], [Avion], [Pilote], [VilleDepart], [VilleArrivee], [HeureDepart], [HeureArrivee]) VALUES (200, 103, 1, N'Nice', N'Paris', CAST(7.30 AS Decimal(5, 2)), CAST(8.00 AS Decimal(5, 2)))
INSERT [dbo].[vol] ([Vol#], [Avion], [Pilote], [VilleDepart], [VilleArrivee], [HeureDepart], [HeureArrivee]) VALUES (201, 120, 1, N'Nice', N'Paris', CAST(8.00 AS Decimal(5, 2)), CAST(11.00 AS Decimal(5, 2)))
INSERT [dbo].[vol] ([Vol#], [Avion], [Pilote], [VilleDepart], [VilleArrivee], [HeureDepart], [HeureArrivee]) VALUES (202, 103, 2, N'Nice', N'Paris', CAST(16.00 AS Decimal(5, 2)), CAST(19.00 AS Decimal(5, 2)))
INSERT [dbo].[vol] ([Vol#], [Avion], [Pilote], [VilleDepart], [VilleArrivee], [HeureDepart], [HeureArrivee]) VALUES (747, 104, 1, N'Paris', N'Sydney', CAST(8.00 AS Decimal(5, 2)), CAST(22.00 AS Decimal(5, 2)))
/****** Object:  Table [dbo].[AffecteVol]    Script Date: 06/30/2015 08:24:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AffecteVol](
	[Passager] [int] NOT NULL,
	[Vol] [smallint] NOT NULL,
	[Datevol] [date] NOT NULL,
	[Numplace] [smallint] NOT NULL,
	[Prix] [decimal](9, 2) NULL,
 CONSTRAINT [PK_AffecteVol] PRIMARY KEY CLUSTERED 
(
	[Passager] ASC,
	[Vol] ASC,
	[Datevol] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AffecteVol] ([Passager], [Vol], [Datevol], [Numplace], [Prix]) VALUES (1, 103, CAST(0x183A0B00 AS Date), 12, CAST(900.00 AS Decimal(9, 2)))
INSERT [dbo].[AffecteVol] ([Passager], [Vol], [Datevol], [Numplace], [Prix]) VALUES (3, 103, CAST(0x183A0B00 AS Date), 23, CAST(900.00 AS Decimal(9, 2)))
INSERT [dbo].[AffecteVol] ([Passager], [Vol], [Datevol], [Numplace], [Prix]) VALUES (5, 100, CAST(0x363A0B00 AS Date), 55, CAST(1200.00 AS Decimal(9, 2)))
INSERT [dbo].[AffecteVol] ([Passager], [Vol], [Datevol], [Numplace], [Prix]) VALUES (6, 100, CAST(0x363A0B00 AS Date), 54, CAST(1220.00 AS Decimal(9, 2)))
INSERT [dbo].[AffecteVol] ([Passager], [Vol], [Datevol], [Numplace], [Prix]) VALUES (7, 100, CAST(0x1A3A0B00 AS Date), 66, CAST(1150.00 AS Decimal(9, 2)))
/****** Object:  Default [DF_pilote_SalaireBrut]    Script Date: 06/30/2015 08:24:55 ******/
ALTER TABLE [dbo].[Pilote] ADD  CONSTRAINT [DF_pilote_SalaireBrut]  DEFAULT ((1500)) FOR [SalaireBrut]
GO
/****** Object:  ForeignKey [FK_vol_avion]    Script Date: 06/30/2015 08:24:55 ******/
ALTER TABLE [dbo].[vol]  WITH CHECK ADD  CONSTRAINT [FK_vol_avion] FOREIGN KEY([Avion])
REFERENCES [dbo].[avion] ([Av#])
GO
ALTER TABLE [dbo].[vol] CHECK CONSTRAINT [FK_vol_avion]
GO
/****** Object:  ForeignKey [FK_vol_pilote]    Script Date: 06/30/2015 08:24:55 ******/
ALTER TABLE [dbo].[vol]  WITH CHECK ADD  CONSTRAINT [FK_vol_pilote] FOREIGN KEY([Pilote])
REFERENCES [dbo].[Pilote] ([Pil#])
GO
ALTER TABLE [dbo].[vol] CHECK CONSTRAINT [FK_vol_pilote]
GO
/****** Object:  ForeignKey [FK_AffecteVol_Passager]    Script Date: 06/30/2015 08:24:55 ******/
ALTER TABLE [dbo].[AffecteVol]  WITH CHECK ADD  CONSTRAINT [FK_AffecteVol_Passager] FOREIGN KEY([Passager])
REFERENCES [dbo].[Passager] ([Pas#])
GO
ALTER TABLE [dbo].[AffecteVol] CHECK CONSTRAINT [FK_AffecteVol_Passager]
GO
/****** Object:  ForeignKey [FK_AffecteVol_vol]    Script Date: 06/30/2015 08:24:55 ******/
ALTER TABLE [dbo].[AffecteVol]  WITH CHECK ADD  CONSTRAINT [FK_AffecteVol_vol] FOREIGN KEY([Vol])
REFERENCES [dbo].[vol] ([Vol#])
GO
ALTER TABLE [dbo].[AffecteVol] CHECK CONSTRAINT [FK_AffecteVol_vol]
GO
