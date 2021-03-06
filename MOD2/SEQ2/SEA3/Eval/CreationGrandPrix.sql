USE [GrandPrixF1]
GO

/****** Object:  Table [dbo].[Sponsor]    Script Date: 07/31/2015 11:54:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sponsor](
	[CodeSponsor] [nchar](10) NOT NULL,
	[NomSociete] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Sponsor] PRIMARY KEY CLUSTERED 
(
	[CodeSponsor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Sponsor] ([CodeSponsor], [NomSociete]) VALUES (N'ACER      ', N'ACER')
INSERT [dbo].[Sponsor] ([CodeSponsor], [NomSociete]) VALUES (N'AIRASIA   ', N'AIR ASIA')
INSERT [dbo].[Sponsor] ([CodeSponsor], [NomSociete]) VALUES (N'ALZKONOBEL', N'Akzo Nobel ')
INSERT [dbo].[Sponsor] ([CodeSponsor], [NomSociete]) VALUES (N'COCA      ', N'Coca Cola')
INSERT [dbo].[Sponsor] ([CodeSponsor], [NomSociete]) VALUES (N'HEADSHOUL ', N'Head & Shoulder')
INSERT [dbo].[Sponsor] ([CodeSponsor], [NomSociete]) VALUES (N'MCGREGOR  ', N'Mac Gregor ')
INSERT [dbo].[Sponsor] ([CodeSponsor], [NomSociete]) VALUES (N'MEDION    ', N'Medion')
INSERT [dbo].[Sponsor] ([CodeSponsor], [NomSociete]) VALUES (N'MILLE     ', N'Richard Mille')
INSERT [dbo].[Sponsor] ([CodeSponsor], [NomSociete]) VALUES (N'NEC       ', N'Nec')
INSERT [dbo].[Sponsor] ([CodeSponsor], [NomSociete]) VALUES (N'NEXA      ', N'Nexa Autocolor ')
INSERT [dbo].[Sponsor] ([CodeSponsor], [NomSociete]) VALUES (N'OERLIKON  ', N'Oerlikon ')
INSERT [dbo].[Sponsor] ([CodeSponsor], [NomSociete]) VALUES (N'OMP       ', N'OMP Racing')
INSERT [dbo].[Sponsor] ([CodeSponsor], [NomSociete]) VALUES (N'PANASONIC ', N'Panasonic')
INSERT [dbo].[Sponsor] ([CodeSponsor], [NomSociete]) VALUES (N'PARTYPOKER', N'PartyPoker ')
INSERT [dbo].[Sponsor] ([CodeSponsor], [NomSociete]) VALUES (N'PEPE      ', N'Pepe Jeans ')
INSERT [dbo].[Sponsor] ([CodeSponsor], [NomSociete]) VALUES (N'PETRONAS  ', N'Petronas')
INSERT [dbo].[Sponsor] ([CodeSponsor], [NomSociete]) VALUES (N'RUSHELICO ', N'Russian Helicopters')
INSERT [dbo].[Sponsor] ([CodeSponsor], [NomSociete]) VALUES (N'SANTANDER ', N'Santander')
INSERT [dbo].[Sponsor] ([CodeSponsor], [NomSociete]) VALUES (N'SEAT      ', N'SEAT')
INSERT [dbo].[Sponsor] ([CodeSponsor], [NomSociete]) VALUES (N'TRUPHONE  ', N'True Phone')
INSERT [dbo].[Sponsor] ([CodeSponsor], [NomSociete]) VALUES (N'WHITEMACK ', N'Whyte & Mackay')
INSERT [dbo].[Sponsor] ([CodeSponsor], [NomSociete]) VALUES (N'WIHURI    ', N'Wihuri')
/****** Object:  Table [dbo].[Pays]    Script Date: 07/31/2015 11:54:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pays](
	[idPays2] [char](2) NOT NULL,
	[idPays3] [char](3) NOT NULL,
	[idPaysNum] [int] NOT NULL,
	[LibellePays] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Pays] PRIMARY KEY CLUSTERED 
(
	[idPays2] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'AD', N'AND', 20, N'ANDORRE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'AE', N'ARE', 784, N'EMIRATS ARABES UNIS ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'AF', N'AFG', 4, N'AFGHANISTAN')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'AG', N'ATG', 28, N'ANTIGUA-ET-BARBUDA')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'AI', N'AIA', 660, N'ANGUILLA')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'AL', N'ALB', 8, N'ALBANIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'AM', N'ARM', 51, N'ARMENIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'AN', N'ANT', 530, N'ANTILLES NEERLANDAISES ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'AO', N'AGO', 24, N'ANGOLA')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'AQ', N'ATA', 10, N'ANTARCTIQUE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'AR', N'ARG', 32, N'ARGENTINE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'AS', N'ASM', 16, N'SAMOA AMERICAINES ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'AT', N'AUT', 40, N'AUTRICHE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'AU', N'AUS', 36, N'AUSTRALIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'AW', N'ABW', 533, N'ARUBA')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'AX', N'ALA', 248, N'ALAND, ILES')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'AZ', N'AZE', 31, N'AZERBAIDJAN ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'BA', N'BIH', 70, N'BOSNIE-HERZÉGOVINE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'BB', N'BRB', 52, N'BARBADE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'BD', N'BGD', 50, N'BANGLADESH')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'BE', N'BEL', 56, N'BELGIQUE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'BF', N'BFA', 854, N'BURKINA FASO')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'BG', N'BGR', 100, N'BULGARIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'BH', N'BHR', 48, N'BAHREIN BAHREÏN')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'BI', N'BDI', 108, N'BURUNDI')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'BJ', N'BEN', 204, N'BENIN')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'BL', N'BLM', 652, N'SAINT-BARTHELEMY ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'BM', N'BMU', 60, N'BERMUDES')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'BN', N'BRN', 96, N'BRUNEI DARUSSALAM ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'BO', N'BOL', 68, N'BOLIVIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'BR', N'BRA', 76, N'BRESIL ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'BS', N'BHS', 44, N'BAHAMAS')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'BT', N'BTN', 64, N'BHOUTAN')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'BW', N'BWA', 72, N'BOTSWANA')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'BY', N'BLR', 112, N'BELARUS')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'BZ', N'BLZ', 84, N'BELIZE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'CA', N'CAN', 124, N'CANADA')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'CC', N'CCK', 166, N'COCOS (KEELING), ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'CD', N'COD', 180, N'CONGO, LA REPUBLIQUE DEMOCRATIQUE DU CONGO')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'CF', N'CAF', 140, N'CENTRAFRICAINE, REPUBLIQUE ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'CG', N'COG', 178, N'CONGO')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'CH', N'CHE', 756, N'SUISSE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'CI', N'CIV', 384, N'COTE D''IVOIRE ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'CK', N'COK', 184, N'COOK, ILES')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'CL', N'CHL', 152, N'CHILI')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'CM', N'CMR', 120, N'CAMEROUN')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'CN', N'CHN', 156, N'CHINE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'CO', N'COL', 170, N'COLOMBIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'CR', N'CRI', 188, N'COSTA RICA')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'CU', N'CUB', 192, N'CUBA')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'CV', N'CPV', 132, N'CAP-VERT')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'CX', N'CXR', 162, N'CHRISTMAS, ILE ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'CY', N'CYP', 196, N'CHYPRE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'CZ', N'CZE', 203, N'TCHEQUE, REPUBLIQUE ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'DE', N'DEU', 276, N'ALLEMAGNE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'DJ', N'DJI', 262, N'DJIBOUTI')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'DK', N'DNK', 208, N'DANEMARK')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'DO', N'DOM', 212, N'DOMINICAINE, REPUBLIQUE ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'DZ', N'DZA', 12, N'ALGERIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'EC', N'ECU', 218, N'EQUATEUR ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'EE', N'EST', 233, N'ESTONIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'EG', N'EGY', 818, N'EGYPTE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'EH', N'ESH', 732, N'SAHARA OCCIDENTAL')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'ER', N'ERI', 232, N'ERYTHREE ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'ES', N'ESP', 724, N'ESPAGNE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'ET', N'ETH', 231, N'ETHIOPIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'FI', N'FIN', 246, N'FINLANDE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'FJ', N'FJI', 242, N'FIDJI')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'FM', N'FSM', 583, N'MICRONESIE, ETATS FEDERES DE MICRONÉSIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'FO', N'FRO', 234, N'FEROE, ILES')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'FR', N'FRA', 250, N'FRANCE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'GA', N'GAB', 266, N'GABON')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'GB', N'GBR', 826, N'ROYAUME-UNI')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'GD', N'GRD', 308, N'GRENADE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'GE', N'GEO', 268, N'GEORGIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'GF', N'GUF', 254, N'GUYANE FRANCAISE ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'GG', N'GGY', 831, N'GUERNESEY')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'GH', N'GHA', 288, N'GHANA')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'GI', N'GIB', 292, N'GIBRALTAR')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'GL', N'GRL', 304, N'GROENLAND')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'GM', N'GMB', 270, N'GAMBIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'GN', N'GIN', 624, N'GUINEE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'GP', N'GLP', 312, N'GUADELOUPE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'GQ', N'GNQ', 226, N'GUINEE EQUATORIALE ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'GR', N'GRC', 300, N'GRECE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'GT', N'GTM', 320, N'GUATEMALA')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'GU', N'GUM', 316, N'GUAM')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'GW', N'GNB', 324, N'GUINEE BISSAU ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'GY', N'GUY', 328, N'GUYANE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'HK', N'HKG', 344, N'HONG KONG')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'HM', N'HMD', 334, N'HEARD, ILE ET MCDONALD, ILES ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'HN', N'HND', 340, N'HONDURAS')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'HR', N'HRV', 191, N'CROATIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'HT', N'HTI', 332, N'HAITI ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'HU', N'HUN', 348, N'HONGRIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'ID', N'IDN', 360, N'INDONESIE ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'IE', N'IRL', 372, N'IRLANDE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'IL', N'ISR', 376, N'ISRAEL')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'IN', N'IND', 356, N'INDE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'IQ', N'IRQ', 368, N'IRAQ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'IR', N'IRN', 364, N'IRAN, REPUBLIQUE ISLAMIQUE D'' IRAN, ')
GO
print 'Processed 100 total records'
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'IS', N'ISL', 352, N'ISLANDE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'IT', N'ITA', 380, N'ITALIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'JE', N'JEY', 832, N'JERSEY')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'JM', N'JAM', 388, N'JAMAIQUE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'JO', N'JOR', 400, N'JORDANIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'JP', N'JPN', 392, N'JAPON')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'KE', N'KEN', 404, N'KENYA')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'KG', N'KGZ', 417, N'KIRGHIZISTAN')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'KH', N'KHM', 116, N'CAMBODGE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'KI', N'KIR', 296, N'KIRIBATI')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'KM', N'COM', 174, N'COMORES')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'KN', N'KNA', 659, N'SAINT-KITTS-ET-NEVIS')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'KP', N'PRK', 410, N'COREE, REPUBLIQUE POPULAIRE DEMOCRATIQUE DE CORÉE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'KR', N'KOR', 408, N'COREE, REPUBLIQUE DE CORÉE, ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'KW', N'KWT', 414, N'KOWEIT')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'KY', N'CYM', 136, N'CAIMANES, ILES ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'KZ', N'KAZ', 398, N'KAZAKHSTAN')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'LA', N'LAO', 418, N'LAOS, REPUBLIQUE DEMOCRATIQUE POPULAIRE LAO')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'LB', N'LBN', 422, N'LIBAN')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'LC', N'LCA', 662, N'SAINTE-LUCIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'LI', N'LIE', 438, N'LIECHTENSTEIN')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'LK', N'LKA', 144, N'SRI LANKA')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'LR', N'LBR', 430, N'LIBERIA')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'LS', N'LSO', 426, N'LESOTHO')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'LT', N'LTU', 440, N'LITUANIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'LU', N'LUX', 442, N'LUXEMBOURG')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'LV', N'LVA', 428, N'LETTONIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'LY', N'LBY', 434, N'LIBYENNE, JAMAHIRIYA ARABE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'MA', N'MAR', 504, N'MAROC')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'MC', N'MCO', 492, N'MONACO')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'MD', N'MDA', 498, N'MOLDOVA')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'ME', N'MNE', 499, N'MONTENEGRO ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'MF', N'MAF', 663, N'SAINT-MARTIN (PARTIE FRANCAISE) ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'MG', N'MDG', 450, N'MADAGASCAR')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'MH', N'MHL', 584, N'MARSHALL, ILES ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'MK', N'MKD', 807, N'MACEDOINE, L''EX-REPUBLIQUE YOUGOSLAVE DE MACÉDOINE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'ML', N'MLI', 466, N'MALI')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'MN', N'MNG', 496, N'MONGOLIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'MO', N'MAC', 446, N'MACAO')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'MP', N'MNP', 580, N'MARIANNES DU NORD, ILES MARIANNES DU NORD')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'MQ', N'MTQ', 474, N'MARTINIQUE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'MR', N'MRT', 478, N'MAURITANIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'MS', N'MSR', 500, N'MONTSERRAT')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'MT', N'MLT', 470, N'MALTE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'MU', N'MUS', 480, N'MAURICE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'MV', N'MDV', 462, N'MALDIVES')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'MW', N'MWI', 454, N'MALAWI')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'MX', N'MEX', 484, N'MEXIQUE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'MY', N'MYS', 458, N'MALAISIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'MZ', N'MOZ', 508, N'MOZAMBIQUE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'NA', N'NAM', 516, N'NAMIBIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'NC', N'NCL', 540, N'NOUVELLE-CALEDONIE ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'NE', N'NER', 562, N'NIGER')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'NF', N'NFK', 574, N'NORFOLK, ILE ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'NG', N'NGA', 566, N'NIGERIA')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'NI', N'NIC', 558, N'NICARAGUA')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'NL', N'NLD', 528, N'PAYS-BAS')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'NO', N'NOR', 578, N'NORVEGE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'NP', N'NPL', 524, N'NEPAL')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'NR', N'NRU', 520, N'NAURU')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'NU', N'NIU', 570, N'NIUE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'NZ', N'NZL', 554, N'NOUVELLE-ZELANDE ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'OM', N'OMN', 512, N'OMAN')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'PA', N'PAN', 591, N'PANAMA')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'PE', N'PER', 604, N'PEROU')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'PF', N'PYF', 258, N'POLYNESIE FRANCAISE ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'PG', N'PNG', 598, N'PAPOUASIE-NOUVELLE-GUINEE ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'PH', N'PHL', 608, N'PHILIPPINES')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'PK', N'PAK', 586, N'PAKISTAN')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'PL', N'POL', 616, N'POLOGNE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'PM', N'SPM', 666, N'SAINT-PIERRE-ET-MIQUELON')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'PN', N'PCN', 612, N'PITCAIRN')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'PR', N'PRI', 630, N'PORTO RICO')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'PT', N'PRT', 620, N'PORTUGAL')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'PW', N'PLW', 585, N'PALAOS')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'PY', N'PRY', 600, N'PARAGUAY')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'QA', N'QAT', 634, N'QATAR')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'RE', N'REU', 638, N'REUNION')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'RO', N'ROU', 642, N'ROUMANIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'RS', N'SRB', 688, N'SERBIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'RU', N'RUS', 643, N'RUSSIE, FEDERATION DE RUSSIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'RW', N'RWA', 646, N'RWANDA')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'SA', N'SAU', 682, N'ARABIE SAOUDITE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'SB', N'SLB', 90, N'SALOMON, ILES ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'SC', N'SYC', 690, N'SEYCHELLES')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'SD', N'SDN', 736, N'SOUDAN')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'SE', N'SWE', 752, N'SUEDE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'SG', N'SGP', 702, N'SINGAPOUR')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'SH', N'SHN', 654, N'SAINTE-HÉLÈNE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'SI', N'SVN', 705, N'SLOVENIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'SJ', N'SJM', 744, N'SVALBARD ET ILE JAN MAYEN ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'SK', N'SVK', 703, N'SLOVAQUIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'SL', N'SLE', 694, N'SIERRA LEONE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'SM', N'SMR', 674, N'SAINT-MARIN')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'SN', N'SEN', 686, N'SENEGAL')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'SO', N'SOM', 706, N'SOMALIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'SR', N'SUR', 740, N'SURINAME')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'ST', N'STP', 678, N'SAO TOME-ET-PRINCIPE ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'SY', N'SYR', 760, N'SYRIENNE, REPUBLIQUE ARABE ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'SZ', N'SWZ', 748, N'SWAZILAND')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'TC', N'TCA', 796, N'TURKS ET CAIQUES, ILES')
GO
print 'Processed 200 total records'
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'TD', N'TCD', 148, N'TCHAD')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'TF', N'ATF', 260, N'TERRES AUSTRALES FRANCAISES ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'TG', N'TGO', 768, N'TOGO')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'TH', N'THA', 764, N'THAILANDE ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'TJ', N'TJK', 762, N'TADJIKISTAN')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'TK', N'TKL', 772, N'TOKELAU')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'TL', N'TLS', 626, N'TIMOR-LESTE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'TM', N'TKM', 795, N'TURKMENISTAN')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'TN', N'TUN', 788, N'TUNISIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'TO', N'TON', 776, N'TONGA')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'TR', N'TUR', 792, N'TURQUIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'TT', N'TTO', 780, N'TRINITE-ET-TOBAGO ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'TV', N'TUV', 798, N'TUVALU')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'TW', N'TWN', 158, N'TAÏWAN, PROVINCE DE CHINE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'TZ', N'TZA', 834, N'TANZANIE, REPUBLIQUE UNIE DE TANZANIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'UA', N'UKR', 804, N'UKRAINE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'UG', N'UGA', 800, N'OUGANDA')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'UM', N'UMI', 581, N'ILES MINEURES ELOIGNEES DES Etats-Unis')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'US', N'USA', 840, N'Etats-Unis')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'UY', N'URY', 858, N'URUGUAY')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'UZ', N'UZB', 860, N'OUZBEKISTAN ')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'VC', N'VCT', 670, N'SAINT-VINCENT-ET-LES GRENADINES')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'VE', N'VEN', 862, N'VENEZUELA')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'VG', N'VGB', 92, N'ILES VIERGES BRITANNIQUES')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'VI', N'VIR', 850, N'ILES VIERGES DES Etats-Unis')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'VN', N'VNM', 704, N'VIET NAM')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'VU', N'VUT', 548, N'VANUATU')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'WF', N'WLF', 876, N'WALLIS-ET-FUTUNA')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'WS', N'WSM', 882, N'SAMOA')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'YE', N'YEM', 887, N'YEMEN')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'YT', N'MYT', 175, N'MAYOTTE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'ZA', N'ZAF', 710, N'AFRIQUE DU SUD')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'ZM', N'ZMB', 894, N'ZAMBIE')
INSERT [dbo].[Pays] ([idPays2], [idPays3], [idPaysNum], [LibellePays]) VALUES (N'ZW', N'ZWE', 716, N'ZIMBABWE')
/****** Object:  Table [dbo].[HistoResultats]    Script Date: 07/31/2015 11:54:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HistoResultats](
	[IDTransaction] [int] IDENTITY(1,1) NOT NULL,
	[Utilisateur] [nvarchar](128) NOT NULL,
	[DateHeure] [datetime] NOT NULL,
	[CodeOperation] [char](3) NOT NULL,
	[LibelleOperation] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_HistoResultats] PRIMARY KEY CLUSTERED 
(
	[IDTransaction] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GrandPrix]    Script Date: 07/31/2015 11:54:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrandPrix](
	[CodeGP] [nchar](10) NOT NULL,
	[NomGrandPrix] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_GrandPrix_1] PRIMARY KEY CLUSTERED 
(
	[CodeGP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[GrandPrix] ([CodeGP], [NomGrandPrix]) VALUES (N'GPAD      ', N'Grand Prix d''Abou Dabi')
INSERT [dbo].[GrandPrix] ([CodeGP], [NomGrandPrix]) VALUES (N'GPAU      ', N'Grand Prix d''Australie')
INSERT [dbo].[GrandPrix] ([CodeGP], [NomGrandPrix]) VALUES (N'GPBG      ', N'Grand Prix de Belgique')
INSERT [dbo].[GrandPrix] ([CodeGP], [NomGrandPrix]) VALUES (N'GPBH      ', N'Grand Prix de Bahreïn')
INSERT [dbo].[GrandPrix] ([CodeGP], [NomGrandPrix]) VALUES (N'GPBR      ', N'Grand Prix du Brésil')
INSERT [dbo].[GrandPrix] ([CodeGP], [NomGrandPrix]) VALUES (N'GPCA      ', N'Gand Prix du Canada')
INSERT [dbo].[GrandPrix] ([CodeGP], [NomGrandPrix]) VALUES (N'GPCH      ', N'Grand Prix de Chine')
INSERT [dbo].[GrandPrix] ([CodeGP], [NomGrandPrix]) VALUES (N'GPCS      ', N'Grand Prix de Corée du Sud')
INSERT [dbo].[GrandPrix] ([CodeGP], [NomGrandPrix]) VALUES (N'GPDE      ', N'Grand Prix d''Allemagne')
INSERT [dbo].[GrandPrix] ([CodeGP], [NomGrandPrix]) VALUES (N'GPES      ', N'Grand Prix d''Espagne')
INSERT [dbo].[GrandPrix] ([CodeGP], [NomGrandPrix]) VALUES (N'GPGB      ', N'Grand Prix de Grande-Bretagne')
INSERT [dbo].[GrandPrix] ([CodeGP], [NomGrandPrix]) VALUES (N'GPHN      ', N'Grand Prix de Hongrie')
INSERT [dbo].[GrandPrix] ([CodeGP], [NomGrandPrix]) VALUES (N'GPIN      ', N'Grand Prix de l''Inde')
INSERT [dbo].[GrandPrix] ([CodeGP], [NomGrandPrix]) VALUES (N'GPIT      ', N'Grand Prix d''Italie')
INSERT [dbo].[GrandPrix] ([CodeGP], [NomGrandPrix]) VALUES (N'GPJP      ', N'Grand Prix du Japon')
INSERT [dbo].[GrandPrix] ([CodeGP], [NomGrandPrix]) VALUES (N'GPMA      ', N'Grand Prix de Malaisie')
INSERT [dbo].[GrandPrix] ([CodeGP], [NomGrandPrix]) VALUES (N'GPMO      ', N'Grand Prix de Monaco')
INSERT [dbo].[GrandPrix] ([CodeGP], [NomGrandPrix]) VALUES (N'GPSI      ', N'Grand Prix de Singapour')
INSERT [dbo].[GrandPrix] ([CodeGP], [NomGrandPrix]) VALUES (N'GPUS      ', N'Grand Prix des Etats Unis')
/****** Object:  Table [dbo].[Fournisseur]    Script Date: 07/31/2015 11:54:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fournisseur](
	[CodeFournisseurPneumatiques] [nchar](10) NOT NULL,
	[RaisonSocialeFournisseur] [nvarchar](50) NOT NULL,
	[NumAgrementFIA] [int] NOT NULL,
 CONSTRAINT [PK_Fournisseur] PRIMARY KEY CLUSTERED 
(
	[CodeFournisseurPneumatiques] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Fournisseur] ([CodeFournisseurPneumatiques], [RaisonSocialeFournisseur], [NumAgrementFIA]) VALUES (N'BRIDGES   ', N'Bridgestone', 433)
INSERT [dbo].[Fournisseur] ([CodeFournisseurPneumatiques], [RaisonSocialeFournisseur], [NumAgrementFIA]) VALUES (N'GOODYEAR  ', N'Goodyear', 422)
INSERT [dbo].[Fournisseur] ([CodeFournisseurPneumatiques], [RaisonSocialeFournisseur], [NumAgrementFIA]) VALUES (N'MICHELIN  ', N'Michelin', 455)
INSERT [dbo].[Fournisseur] ([CodeFournisseurPneumatiques], [RaisonSocialeFournisseur], [NumAgrementFIA]) VALUES (N'PIRELLI   ', N'Pirelli', 500)
/****** Object:  Table [dbo].[Ecurie]    Script Date: 07/31/2015 11:54:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ecurie](
	[CodeEcurie] [nchar](10) NOT NULL,
	[NomEcurie] [nvarchar](100) NOT NULL,
	[CodeFournisseurPneumatiques] [nchar](10) NOT NULL,
	[NomDirecteurEcurie] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Ecurie] PRIMARY KEY CLUSTERED 
(
	[CodeEcurie] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Ecurie] ([CodeEcurie], [NomEcurie], [CodeFournisseurPneumatiques], [NomDirecteurEcurie]) VALUES (N'CATERHAM  ', N'Caterham F1 Team', N'PIRELLI   ', N'Tony Fernandes')
INSERT [dbo].[Ecurie] ([CodeEcurie], [NomEcurie], [CodeFournisseurPneumatiques], [NomDirecteurEcurie]) VALUES (N'FERRARI   ', N'Scuderia Ferrari', N'PIRELLI   ', N'Stefano Domenicali')
INSERT [dbo].[Ecurie] ([CodeEcurie], [NomEcurie], [CodeFournisseurPneumatiques], [NomDirecteurEcurie]) VALUES (N'FORCEIND  ', N'Force India', N'PIRELLI   ', N'Vijay Mallya')
INSERT [dbo].[Ecurie] ([CodeEcurie], [NomEcurie], [CodeFournisseurPneumatiques], [NomDirecteurEcurie]) VALUES (N'LOTUS     ', N'Lotus F1 Team', N'PIRELLI   ', N'Eric Boullier')
INSERT [dbo].[Ecurie] ([CodeEcurie], [NomEcurie], [CodeFournisseurPneumatiques], [NomDirecteurEcurie]) VALUES (N'MARUSSIA  ', N'Marussia F1 Team', N'PIRELLI   ', N'John Booth')
INSERT [dbo].[Ecurie] ([CodeEcurie], [NomEcurie], [CodeFournisseurPneumatiques], [NomDirecteurEcurie]) VALUES (N'MCLAREN   ', N'Mac Laren Mercedes', N'PIRELLI   ', N'Martin Whitmarsh')
INSERT [dbo].[Ecurie] ([CodeEcurie], [NomEcurie], [CodeFournisseurPneumatiques], [NomDirecteurEcurie]) VALUES (N'MERCEDES  ', N'Mercedes AMG', N'PIRELLI   ', N'Toto Wolff')
INSERT [dbo].[Ecurie] ([CodeEcurie], [NomEcurie], [CodeFournisseurPneumatiques], [NomDirecteurEcurie]) VALUES (N'REDBULL   ', N'Red Bull Racing', N'PIRELLI   ', N'Christian Horner')
INSERT [dbo].[Ecurie] ([CodeEcurie], [NomEcurie], [CodeFournisseurPneumatiques], [NomDirecteurEcurie]) VALUES (N'SAUBER    ', N'Sauber', N'BRIDGES   ', N'Peter Sauber')
INSERT [dbo].[Ecurie] ([CodeEcurie], [NomEcurie], [CodeFournisseurPneumatiques], [NomDirecteurEcurie]) VALUES (N'TOROROSSO ', N'Scuderia Toro Rosso', N'PIRELLI   ', N'Franz Tost')
INSERT [dbo].[Ecurie] ([CodeEcurie], [NomEcurie], [CodeFournisseurPneumatiques], [NomDirecteurEcurie]) VALUES (N'WILLIAMS  ', N'Williams F1', N'PIRELLI   ', N'Frank Williams')
/****** Object:  Table [dbo].[Circuit]    Script Date: 07/31/2015 11:54:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Circuit](
	[CodeCircuit] [nchar](10) NOT NULL,
	[NomCircuit] [nvarchar](50) NOT NULL,
	[Localisation] [char](2) NOT NULL,
	[LongueurPiste] [int] NOT NULL,
	[CapaciteAccueil] [int] NOT NULL,
 CONSTRAINT [PK_Circuit] PRIMARY KEY CLUSTERED 
(
	[CodeCircuit] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Circuit] ([CodeCircuit], [NomCircuit], [Localisation], [LongueurPiste], [CapaciteAccueil]) VALUES (N'ABUDABI   ', N'Emirats Abu Abi Circuit', N'AE', 5550, 120000)
INSERT [dbo].[Circuit] ([CodeCircuit], [NomCircuit], [Localisation], [LongueurPiste], [CapaciteAccueil]) VALUES (N'ALBPAR    ', N'Albert Park Melbourne', N'AU', 5303, 57500)
INSERT [dbo].[Circuit] ([CodeCircuit], [NomCircuit], [Localisation], [LongueurPiste], [CapaciteAccueil]) VALUES (N'AUSTIN    ', N'Circuit des amériques', N'US', 5513, 110000)
INSERT [dbo].[Circuit] ([CodeCircuit], [NomCircuit], [Localisation], [LongueurPiste], [CapaciteAccueil]) VALUES (N'BAHREIN   ', N'Bahreïn Manama', N'BH', 5412, 66000)
INSERT [dbo].[Circuit] ([CodeCircuit], [NomCircuit], [Localisation], [LongueurPiste], [CapaciteAccueil]) VALUES (N'CATALUNYA ', N'Catalunya montmelo', N'ES', 4655, 55650)
INSERT [dbo].[Circuit] ([CodeCircuit], [NomCircuit], [Localisation], [LongueurPiste], [CapaciteAccueil]) VALUES (N'HUNGARO   ', N'Hungaroring Sport RT', N'HU', 4381, 66000)
INSERT [dbo].[Circuit] ([CodeCircuit], [NomCircuit], [Localisation], [LongueurPiste], [CapaciteAccueil]) VALUES (N'INTERLAGOS', N'Interlagos International ', N'BR', 4309, 88000)
INSERT [dbo].[Circuit] ([CodeCircuit], [NomCircuit], [Localisation], [LongueurPiste], [CapaciteAccueil]) VALUES (N'MONACO    ', N'Albert Ier Monaco', N'MC', 3340, 77000)
INSERT [dbo].[Circuit] ([CodeCircuit], [NomCircuit], [Localisation], [LongueurPiste], [CapaciteAccueil]) VALUES (N'MONTREAL  ', N'Circuit Gilles Villeneuve', N'CA', 4361, 54000)
INSERT [dbo].[Circuit] ([CodeCircuit], [NomCircuit], [Localisation], [LongueurPiste], [CapaciteAccueil]) VALUES (N'MONZA     ', N'Autodroma Monza', N'IT', 5793, 110000)
INSERT [dbo].[Circuit] ([CodeCircuit], [NomCircuit], [Localisation], [LongueurPiste], [CapaciteAccueil]) VALUES (N'NEWDEHLI  ', N'Circuit Buddh', N'IN', 5125, 110000)
INSERT [dbo].[Circuit] ([CodeCircuit], [NomCircuit], [Localisation], [LongueurPiste], [CapaciteAccueil]) VALUES (N'NURBUG    ', N'Nurbugring Koblenz', N'DE', 5148, 77000)
INSERT [dbo].[Circuit] ([CodeCircuit], [NomCircuit], [Localisation], [LongueurPiste], [CapaciteAccueil]) VALUES (N'SEPANG    ', N'Sepang Int Circ', N'MY', 5543, 72000)
INSERT [dbo].[Circuit] ([CodeCircuit], [NomCircuit], [Localisation], [LongueurPiste], [CapaciteAccueil]) VALUES (N'SHANGHAI  ', N'Shanghai International Circuit', N'CN', 5451, 88000)
INSERT [dbo].[Circuit] ([CodeCircuit], [NomCircuit], [Localisation], [LongueurPiste], [CapaciteAccueil]) VALUES (N'SILVERSTON', N'Silverstone Circuits ', N'GB', 5891, 65250)
INSERT [dbo].[Circuit] ([CodeCircuit], [NomCircuit], [Localisation], [LongueurPiste], [CapaciteAccueil]) VALUES (N'SINGAPOUR ', N'Circuit de Singapour', N'SG', 5067, 76500)
INSERT [dbo].[Circuit] ([CodeCircuit], [NomCircuit], [Localisation], [LongueurPiste], [CapaciteAccueil]) VALUES (N'SPA       ', N'Spa Francorchamps', N'BE', 7004, 77600)
INSERT [dbo].[Circuit] ([CodeCircuit], [NomCircuit], [Localisation], [LongueurPiste], [CapaciteAccueil]) VALUES (N'SUZUKA    ', N'Suzuka circuit international', N'JP', 5807, 78000)
INSERT [dbo].[Circuit] ([CodeCircuit], [NomCircuit], [Localisation], [LongueurPiste], [CapaciteAccueil]) VALUES (N'YEONGAM   ', N'Circuit de Corée', N'KR', 5615, 155000)
/****** Object:  Table [dbo].[PlanificationGP]    Script Date: 07/31/2015 11:54:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanificationGP](
	[CodeCircuit] [nchar](10) NOT NULL,
	[CodeGP] [nchar](10) NOT NULL,
	[DateGP] [datetime] NOT NULL,
	[NombreTours] [int] NOT NULL,
 CONSTRAINT [PK_PlanificationGP] PRIMARY KEY CLUSTERED 
(
	[CodeCircuit] ASC,
	[CodeGP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[PlanificationGP] ([CodeCircuit], [CodeGP], [DateGP], [NombreTours]) VALUES (N'ABUDABI   ', N'GPAD      ', CAST(0x0000A26B00000000 AS DateTime), 56)
INSERT [dbo].[PlanificationGP] ([CodeCircuit], [CodeGP], [DateGP], [NombreTours]) VALUES (N'ALBPAR    ', N'GPAU      ', CAST(0x0000A18400000000 AS DateTime), 58)
INSERT [dbo].[PlanificationGP] ([CodeCircuit], [CodeGP], [DateGP], [NombreTours]) VALUES (N'AUSTIN    ', N'GPUS      ', CAST(0x0000A27900000000 AS DateTime), 56)
INSERT [dbo].[PlanificationGP] ([CodeCircuit], [CodeGP], [DateGP], [NombreTours]) VALUES (N'BAHREIN   ', N'GPBH      ', CAST(0x0000A1A700000000 AS DateTime), 57)
INSERT [dbo].[PlanificationGP] ([CodeCircuit], [CodeGP], [DateGP], [NombreTours]) VALUES (N'CATALUNYA ', N'GPES      ', CAST(0x0000A1BC00000000 AS DateTime), 66)
INSERT [dbo].[PlanificationGP] ([CodeCircuit], [CodeGP], [DateGP], [NombreTours]) VALUES (N'HUNGARO   ', N'GPHN      ', CAST(0x0000A20900000000 AS DateTime), 70)
INSERT [dbo].[PlanificationGP] ([CodeCircuit], [CodeGP], [DateGP], [NombreTours]) VALUES (N'INTERLAGOS', N'GPBR      ', CAST(0x0000A28000000000 AS DateTime), 71)
INSERT [dbo].[PlanificationGP] ([CodeCircuit], [CodeGP], [DateGP], [NombreTours]) VALUES (N'MONACO    ', N'GPMO      ', CAST(0x0000A1CA00000000 AS DateTime), 78)
INSERT [dbo].[PlanificationGP] ([CodeCircuit], [CodeGP], [DateGP], [NombreTours]) VALUES (N'MONTREAL  ', N'GPCA      ', CAST(0x0000A1D800000000 AS DateTime), 70)
INSERT [dbo].[PlanificationGP] ([CodeCircuit], [CodeGP], [DateGP], [NombreTours]) VALUES (N'MONZA     ', N'GPIT      ', CAST(0x0000A23300000000 AS DateTime), 53)
INSERT [dbo].[PlanificationGP] ([CodeCircuit], [CodeGP], [DateGP], [NombreTours]) VALUES (N'NEWDEHLI  ', N'GPIN      ', CAST(0x0000A26400000000 AS DateTime), 60)
INSERT [dbo].[PlanificationGP] ([CodeCircuit], [CodeGP], [DateGP], [NombreTours]) VALUES (N'NURBUG    ', N'GPDE      ', CAST(0x0000A1F400000000 AS DateTime), 60)
INSERT [dbo].[PlanificationGP] ([CodeCircuit], [CodeGP], [DateGP], [NombreTours]) VALUES (N'SEPANG    ', N'GPMA      ', CAST(0x0000A18B00000000 AS DateTime), 56)
INSERT [dbo].[PlanificationGP] ([CodeCircuit], [CodeGP], [DateGP], [NombreTours]) VALUES (N'SHANGHAI  ', N'GPCH      ', CAST(0x0000A1A000000000 AS DateTime), 56)
INSERT [dbo].[PlanificationGP] ([CodeCircuit], [CodeGP], [DateGP], [NombreTours]) VALUES (N'SILVERSTON', N'GPGB      ', CAST(0x0000A1ED00000000 AS DateTime), 52)
INSERT [dbo].[PlanificationGP] ([CodeCircuit], [CodeGP], [DateGP], [NombreTours]) VALUES (N'SINGAPOUR ', N'GPSI      ', CAST(0x0000A24100000000 AS DateTime), 61)
INSERT [dbo].[PlanificationGP] ([CodeCircuit], [CodeGP], [DateGP], [NombreTours]) VALUES (N'SPA       ', N'GPBG      ', CAST(0x0000A22500000000 AS DateTime), 44)
INSERT [dbo].[PlanificationGP] ([CodeCircuit], [CodeGP], [DateGP], [NombreTours]) VALUES (N'SUZUKA    ', N'GPJP      ', CAST(0x0000A25600000000 AS DateTime), 53)
INSERT [dbo].[PlanificationGP] ([CodeCircuit], [CodeGP], [DateGP], [NombreTours]) VALUES (N'YEONGAM   ', N'GPCS      ', CAST(0x0000A24F00000000 AS DateTime), 55)
/****** Object:  Table [dbo].[Pilote]    Script Date: 07/31/2015 11:54:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pilote](
	[CodePilote] [int] IDENTITY(1,1) NOT NULL,
	[NomPilote] [nvarchar](100) NOT NULL,
	[PrenomPilote] [nvarchar](100) NOT NULL,
	[CodeEcurie] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Pilote] PRIMARY KEY CLUSTERED 
(
	[CodePilote] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Pilote] ON
INSERT [dbo].[Pilote] ([CodePilote], [NomPilote], [PrenomPilote], [CodeEcurie]) VALUES (1, N'Pic', N'Charles', N'CATERHAM  ')
INSERT [dbo].[Pilote] ([CodePilote], [NomPilote], [PrenomPilote], [CodeEcurie]) VALUES (2, N'Van Der Garde', N'Giedo', N'CATERHAM  ')
INSERT [dbo].[Pilote] ([CodePilote], [NomPilote], [PrenomPilote], [CodeEcurie]) VALUES (3, N'Massa ', N'Felipe ', N'FERRARI   ')
INSERT [dbo].[Pilote] ([CodePilote], [NomPilote], [PrenomPilote], [CodeEcurie]) VALUES (4, N'Alonso ', N'Fernando ', N'FERRARI   ')
INSERT [dbo].[Pilote] ([CodePilote], [NomPilote], [PrenomPilote], [CodeEcurie]) VALUES (5, N'Sutil ', N' Adrian ', N'FORCEIND  ')
INSERT [dbo].[Pilote] ([CodePilote], [NomPilote], [PrenomPilote], [CodeEcurie]) VALUES (6, N'Di Resta', N'Paul', N'FORCEIND  ')
INSERT [dbo].[Pilote] ([CodePilote], [NomPilote], [PrenomPilote], [CodeEcurie]) VALUES (7, N'Grosjean', N'Romain', N'LOTUS     ')
INSERT [dbo].[Pilote] ([CodePilote], [NomPilote], [PrenomPilote], [CodeEcurie]) VALUES (8, N'Räikkönen ', N' Kimi', N'LOTUS     ')
INSERT [dbo].[Pilote] ([CodePilote], [NomPilote], [PrenomPilote], [CodeEcurie]) VALUES (9, N'Bianchi', N'Jules', N'MARUSSIA  ')
INSERT [dbo].[Pilote] ([CodePilote], [NomPilote], [PrenomPilote], [CodeEcurie]) VALUES (10, N'Chilton', N'Max', N'MARUSSIA  ')
INSERT [dbo].[Pilote] ([CodePilote], [NomPilote], [PrenomPilote], [CodeEcurie]) VALUES (11, N'Perez', N'Sergio', N'MCLAREN   ')
INSERT [dbo].[Pilote] ([CodePilote], [NomPilote], [PrenomPilote], [CodeEcurie]) VALUES (12, N'Button ', N'Jenson', N'MCLAREN   ')
INSERT [dbo].[Pilote] ([CodePilote], [NomPilote], [PrenomPilote], [CodeEcurie]) VALUES (13, N'Rosberg ', N'Nico', N'MERCEDES  ')
INSERT [dbo].[Pilote] ([CodePilote], [NomPilote], [PrenomPilote], [CodeEcurie]) VALUES (14, N'Hamilton ', N' Lewis ', N'MERCEDES  ')
INSERT [dbo].[Pilote] ([CodePilote], [NomPilote], [PrenomPilote], [CodeEcurie]) VALUES (15, N'Vettel ', N'Sebastian ', N'REDBULL   ')
INSERT [dbo].[Pilote] ([CodePilote], [NomPilote], [PrenomPilote], [CodeEcurie]) VALUES (16, N'Webber ', N'Mark ', N'REDBULL   ')
INSERT [dbo].[Pilote] ([CodePilote], [NomPilote], [PrenomPilote], [CodeEcurie]) VALUES (17, N'Hulkenberg', N'Nico', N'SAUBER    ')
INSERT [dbo].[Pilote] ([CodePilote], [NomPilote], [PrenomPilote], [CodeEcurie]) VALUES (18, N'Gutierrez', N'Esteban', N'SAUBER    ')
INSERT [dbo].[Pilote] ([CodePilote], [NomPilote], [PrenomPilote], [CodeEcurie]) VALUES (19, N'Vergne', N'Jean-Eric', N'TOROROSSO ')
INSERT [dbo].[Pilote] ([CodePilote], [NomPilote], [PrenomPilote], [CodeEcurie]) VALUES (20, N'Ricciardo', N'Daniel', N'TOROROSSO ')
INSERT [dbo].[Pilote] ([CodePilote], [NomPilote], [PrenomPilote], [CodeEcurie]) VALUES (21, N'Maldonado', N'Pastor', N'WILLIAMS  ')
INSERT [dbo].[Pilote] ([CodePilote], [NomPilote], [PrenomPilote], [CodeEcurie]) VALUES (22, N'Bottas', N'Valtteri', N'WILLIAMS  ')
SET IDENTITY_INSERT [dbo].[Pilote] OFF
/****** Object:  Table [dbo].[Voiture]    Script Date: 07/31/2015 11:54:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voiture](
	[NumVoiture] [int] NOT NULL,
	[TypeVoiture] [nchar](10) NOT NULL,
	[CodeEcurie] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Voiture] PRIMARY KEY CLUSTERED 
(
	[NumVoiture] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Voiture] ([NumVoiture], [TypeVoiture], [CodeEcurie]) VALUES (1, N'MP4-28    ', N'MCLAREN   ')
INSERT [dbo].[Voiture] ([NumVoiture], [TypeVoiture], [CodeEcurie]) VALUES (2, N'MP4-28    ', N'MCLAREN   ')
INSERT [dbo].[Voiture] ([NumVoiture], [TypeVoiture], [CodeEcurie]) VALUES (5, N'RB9       ', N'REDBULL   ')
INSERT [dbo].[Voiture] ([NumVoiture], [TypeVoiture], [CodeEcurie]) VALUES (7, N'RB9       ', N'REDBULL   ')
INSERT [dbo].[Voiture] ([NumVoiture], [TypeVoiture], [CodeEcurie]) VALUES (13, N'STR8      ', N'TOROROSSO ')
INSERT [dbo].[Voiture] ([NumVoiture], [TypeVoiture], [CodeEcurie]) VALUES (14, N'STR8      ', N'TOROROSSO ')
INSERT [dbo].[Voiture] ([NumVoiture], [TypeVoiture], [CodeEcurie]) VALUES (16, N'WJM06     ', N'FORCEIND  ')
INSERT [dbo].[Voiture] ([NumVoiture], [TypeVoiture], [CodeEcurie]) VALUES (17, N'WJM06     ', N'FORCEIND  ')
INSERT [dbo].[Voiture] ([NumVoiture], [TypeVoiture], [CodeEcurie]) VALUES (19, N'F138      ', N'FERRARI   ')
INSERT [dbo].[Voiture] ([NumVoiture], [TypeVoiture], [CodeEcurie]) VALUES (21, N'F138      ', N'FERRARI   ')
INSERT [dbo].[Voiture] ([NumVoiture], [TypeVoiture], [CodeEcurie]) VALUES (25, N'FW35      ', N'WILLIAMS  ')
INSERT [dbo].[Voiture] ([NumVoiture], [TypeVoiture], [CodeEcurie]) VALUES (26, N'FW35      ', N'WILLIAMS  ')
INSERT [dbo].[Voiture] ([NumVoiture], [TypeVoiture], [CodeEcurie]) VALUES (27, N'C32       ', N'SAUBER    ')
INSERT [dbo].[Voiture] ([NumVoiture], [TypeVoiture], [CodeEcurie]) VALUES (28, N'C32       ', N'SAUBER    ')
INSERT [dbo].[Voiture] ([NumVoiture], [TypeVoiture], [CodeEcurie]) VALUES (29, N'F1W04     ', N'MERCEDES  ')
INSERT [dbo].[Voiture] ([NumVoiture], [TypeVoiture], [CodeEcurie]) VALUES (30, N'F1W04     ', N'MERCEDES  ')
INSERT [dbo].[Voiture] ([NumVoiture], [TypeVoiture], [CodeEcurie]) VALUES (31, N'CT03      ', N'CATERHAM  ')
INSERT [dbo].[Voiture] ([NumVoiture], [TypeVoiture], [CodeEcurie]) VALUES (32, N'CT03      ', N'CATERHAM  ')
INSERT [dbo].[Voiture] ([NumVoiture], [TypeVoiture], [CodeEcurie]) VALUES (33, N'MR02      ', N'MARUSSIA  ')
INSERT [dbo].[Voiture] ([NumVoiture], [TypeVoiture], [CodeEcurie]) VALUES (34, N'MR03      ', N'MARUSSIA  ')
INSERT [dbo].[Voiture] ([NumVoiture], [TypeVoiture], [CodeEcurie]) VALUES (35, N'E21       ', N'LOTUS     ')
INSERT [dbo].[Voiture] ([NumVoiture], [TypeVoiture], [CodeEcurie]) VALUES (36, N'E21       ', N'LOTUS     ')
/****** Object:  Table [dbo].[Soutenir_Ecurie]    Script Date: 07/31/2015 11:54:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Soutenir_Ecurie](
	[CodeEcurie] [nchar](10) NOT NULL,
	[CodeSponsor] [nchar](10) NOT NULL,
	[MontantUSD] [decimal](18, 3) NOT NULL,
	[NumAgrementFIA] [int] NOT NULL,
 CONSTRAINT [PK_Soutenir_Ecurie] PRIMARY KEY CLUSTERED 
(
	[CodeEcurie] ASC,
	[CodeSponsor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Soutenir_Ecurie] ([CodeEcurie], [CodeSponsor], [MontantUSD], [NumAgrementFIA]) VALUES (N'CATERHAM  ', N'RUSHELICO ', CAST(120000.000 AS Decimal(18, 3)), 104)
INSERT [dbo].[Soutenir_Ecurie] ([CodeEcurie], [CodeSponsor], [MontantUSD], [NumAgrementFIA]) VALUES (N'CATERHAM  ', N'TRUPHONE  ', CAST(251000.000 AS Decimal(18, 3)), 119)
INSERT [dbo].[Soutenir_Ecurie] ([CodeEcurie], [CodeSponsor], [MontantUSD], [NumAgrementFIA]) VALUES (N'FERRARI   ', N'ACER      ', CAST(250000.000 AS Decimal(18, 3)), 101)
INSERT [dbo].[Soutenir_Ecurie] ([CodeEcurie], [CodeSponsor], [MontantUSD], [NumAgrementFIA]) VALUES (N'FERRARI   ', N'SANTANDER ', CAST(250000.000 AS Decimal(18, 3)), 120)
INSERT [dbo].[Soutenir_Ecurie] ([CodeEcurie], [CodeSponsor], [MontantUSD], [NumAgrementFIA]) VALUES (N'FORCEIND  ', N'MEDION    ', CAST(1450000.000 AS Decimal(18, 3)), 112)
INSERT [dbo].[Soutenir_Ecurie] ([CodeEcurie], [CodeSponsor], [MontantUSD], [NumAgrementFIA]) VALUES (N'FORCEIND  ', N'WHITEMACK ', CAST(100000.000 AS Decimal(18, 3)), 105)
INSERT [dbo].[Soutenir_Ecurie] ([CodeEcurie], [CodeSponsor], [MontantUSD], [NumAgrementFIA]) VALUES (N'LOTUS     ', N'AIRASIA   ', CAST(150000.000 AS Decimal(18, 3)), 102)
INSERT [dbo].[Soutenir_Ecurie] ([CodeEcurie], [CodeSponsor], [MontantUSD], [NumAgrementFIA]) VALUES (N'LOTUS     ', N'COCA      ', CAST(251012.000 AS Decimal(18, 3)), 122)
INSERT [dbo].[Soutenir_Ecurie] ([CodeEcurie], [CodeSponsor], [MontantUSD], [NumAgrementFIA]) VALUES (N'LOTUS     ', N'MILLE     ', CAST(250000.000 AS Decimal(18, 3)), 117)
INSERT [dbo].[Soutenir_Ecurie] ([CodeEcurie], [CodeSponsor], [MontantUSD], [NumAgrementFIA]) VALUES (N'MARUSSIA  ', N'NEXA      ', CAST(142542.000 AS Decimal(18, 3)), 109)
INSERT [dbo].[Soutenir_Ecurie] ([CodeEcurie], [CodeSponsor], [MontantUSD], [NumAgrementFIA]) VALUES (N'MCLAREN   ', N'ALZKONOBEL', CAST(100000.000 AS Decimal(18, 3)), 103)
INSERT [dbo].[Soutenir_Ecurie] ([CodeEcurie], [CodeSponsor], [MontantUSD], [NumAgrementFIA]) VALUES (N'MCLAREN   ', N'SANTANDER ', CAST(150000.000 AS Decimal(18, 3)), 120)
INSERT [dbo].[Soutenir_Ecurie] ([CodeEcurie], [CodeSponsor], [MontantUSD], [NumAgrementFIA]) VALUES (N'MERCEDES  ', N'PETRONAS  ', CAST(251000.000 AS Decimal(18, 3)), 115)
INSERT [dbo].[Soutenir_Ecurie] ([CodeEcurie], [CodeSponsor], [MontantUSD], [NumAgrementFIA]) VALUES (N'REDBULL   ', N'PEPE      ', CAST(250000.000 AS Decimal(18, 3)), 106)
INSERT [dbo].[Soutenir_Ecurie] ([CodeEcurie], [CodeSponsor], [MontantUSD], [NumAgrementFIA]) VALUES (N'SAUBER    ', N'NEC       ', CAST(1250000.000 AS Decimal(18, 3)), 121)
INSERT [dbo].[Soutenir_Ecurie] ([CodeEcurie], [CodeSponsor], [MontantUSD], [NumAgrementFIA]) VALUES (N'SAUBER    ', N'OERLIKON  ', CAST(125425.000 AS Decimal(18, 3)), 110)
INSERT [dbo].[Soutenir_Ecurie] ([CodeEcurie], [CodeSponsor], [MontantUSD], [NumAgrementFIA]) VALUES (N'SAUBER    ', N'OMP       ', CAST(251000.000 AS Decimal(18, 3)), 113)
INSERT [dbo].[Soutenir_Ecurie] ([CodeEcurie], [CodeSponsor], [MontantUSD], [NumAgrementFIA]) VALUES (N'SAUBER    ', N'PANASONIC ', CAST(125111.000 AS Decimal(18, 3)), 116)
INSERT [dbo].[Soutenir_Ecurie] ([CodeEcurie], [CodeSponsor], [MontantUSD], [NumAgrementFIA]) VALUES (N'TOROROSSO ', N'OMP       ', CAST(152451.000 AS Decimal(18, 3)), 114)
INSERT [dbo].[Soutenir_Ecurie] ([CodeEcurie], [CodeSponsor], [MontantUSD], [NumAgrementFIA]) VALUES (N'TOROROSSO ', N'PARTYPOKER', CAST(100000.000 AS Decimal(18, 3)), 107)
INSERT [dbo].[Soutenir_Ecurie] ([CodeEcurie], [CodeSponsor], [MontantUSD], [NumAgrementFIA]) VALUES (N'TOROROSSO ', N'SEAT      ', CAST(1250000.000 AS Decimal(18, 3)), 108)
INSERT [dbo].[Soutenir_Ecurie] ([CodeEcurie], [CodeSponsor], [MontantUSD], [NumAgrementFIA]) VALUES (N'WILLIAMS  ', N'MCGREGOR  ', CAST(125425.000 AS Decimal(18, 3)), 111)
INSERT [dbo].[Soutenir_Ecurie] ([CodeEcurie], [CodeSponsor], [MontantUSD], [NumAgrementFIA]) VALUES (N'WILLIAMS  ', N'WIHURI    ', CAST(1250000.000 AS Decimal(18, 3)), 118)
/****** Object:  Table [dbo].[ResultatCourse]    Script Date: 07/31/2015 11:54:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResultatCourse](
	[CodePilote] [int] NOT NULL,
	[NumVoiture] [int] NOT NULL,
	[CodeCircuit] [nchar](10) NOT NULL,
	[CodeGP] [nchar](10) NOT NULL,
	[PositionGrille] [int] NULL,
	[Qualifie] [bit] NOT NULL,
	[Abandon] [bit] NOT NULL,
	[Place] [int] NULL,
	[NombrePointsMarques] [decimal](3, 1) NULL,
	[TempsCourse] [time](7) NULL,
 CONSTRAINT [PK_ResultatCourse] PRIMARY KEY CLUSTERED 
(
	[CodePilote] ASC,
	[NumVoiture] ASC,
	[CodeCircuit] ASC,
	[CodeGP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (1, 31, N'ALBPAR    ', N'GPAU      ', 22, 1, 0, 16, NULL, CAST(0x079086DCFF0C0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (1, 31, N'BAHREIN   ', N'GPBH      ', 18, 1, 0, 17, NULL, CAST(0x07600B1CB10D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (1, 31, N'CATALUNYA ', N'GPES      ', 22, 1, 0, 17, NULL, CAST(0x0700C759260E0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (1, 31, N'MONACO    ', N'GPMO      ', 18, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (1, 31, N'MONTREAL  ', N'GPCA      ', 18, 1, 0, 18, NULL, CAST(0x0730DD174B0D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (1, 31, N'SEPANG    ', N'GPMA      ', 20, 1, 0, 14, NULL, CAST(0x0750F43D1A0E0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (1, 31, N'SHANGHAI  ', N'GPCH      ', 20, 1, 0, 16, NULL, CAST(0x075089DFC00D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (1, 31, N'SILVERSTON', N'GPGB      ', 18, 1, 0, 15, NULL, CAST(0x07D02E75100D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (2, 32, N'ALBPAR    ', N'GPAU      ', 21, 1, 0, 18, NULL, CAST(0x07908F19000D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (2, 32, N'BAHREIN   ', N'GPBH      ', 20, 1, 0, 21, NULL, CAST(0x07200FD0D40D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (2, 32, N'CATALUNYA ', N'GPES      ', 19, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (2, 32, N'MONACO    ', N'GPMO      ', 15, 1, 0, 15, NULL, CAST(0x07600DD667130000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (2, 32, N'MONTREAL  ', N'GPCA      ', 21, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (2, 32, N'SEPANG    ', N'GPMA      ', 22, 1, 0, 15, NULL, CAST(0x0790364D1A0E0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (2, 32, N'SHANGHAI  ', N'GPCH      ', 21, 1, 0, 18, NULL, CAST(0x07B06CF6C00D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (2, 32, N'SILVERSTON', N'GPGB      ', 22, 1, 0, 18, NULL, CAST(0x07F09F00260D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (3, 21, N'ALBPAR    ', N'GPAU      ', 4, 1, 0, 4, CAST(12.0 AS Decimal(3, 1)), CAST(0x0750668AA80C0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (3, 21, N'BAHREIN   ', N'GPBH      ', 4, 1, 0, 15, NULL, CAST(0x07E056009D0D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (3, 21, N'CATALUNYA ', N'GPES      ', 6, 1, 0, 3, CAST(15.0 AS Decimal(3, 1)), CAST(0x07502EEFED0D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (3, 21, N'MONACO    ', N'GPMO      ', 21, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (3, 21, N'MONTREAL  ', N'GPCA      ', 16, 1, 0, 8, CAST(4.0 AS Decimal(3, 1)), CAST(0x07B01236270D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (3, 21, N'SEPANG    ', N'GPMA      ', 2, 1, 0, 5, CAST(10.0 AS Decimal(3, 1)), CAST(0x079034D3E10D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (3, 21, N'SHANGHAI  ', N'GPCH      ', 5, 1, 0, 6, CAST(8.0 AS Decimal(3, 1)), CAST(0x07C06F9F910D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (3, 21, N'SILVERSTON', N'GPGB      ', 11, 1, 0, 6, CAST(8.0 AS Decimal(3, 1)), CAST(0x07D0154D060D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (4, 19, N'ALBPAR    ', N'GPAU      ', 5, 1, 0, 2, CAST(18.0 AS Decimal(3, 1)), CAST(0x0790CBF69B0C0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (4, 19, N'BAHREIN   ', N'GPBH      ', 3, 1, 0, 8, CAST(4.0 AS Decimal(3, 1)), CAST(0x078093EB7F0D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (4, 19, N'CATALUNYA ', N'GPES      ', 5, 1, 0, 1, CAST(25.0 AS Decimal(3, 1)), CAST(0x07406B68DE0D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (4, 19, N'MONACO    ', N'GPMO      ', 6, 1, 0, 7, CAST(6.0 AS Decimal(3, 1)), CAST(0x0760DC7652130000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (4, 19, N'MONTREAL  ', N'GPCA      ', 6, 1, 0, 2, CAST(18.0 AS Decimal(3, 1)), CAST(0x07F0C036E80C0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (4, 19, N'SEPANG    ', N'GPMA      ', 3, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (4, 19, N'SHANGHAI  ', N'GPCH      ', 3, 1, 0, 1, CAST(25.0 AS Decimal(3, 1)), CAST(0x0710BB49790D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (4, 19, N'SILVERSTON', N'GPGB      ', 9, 1, 0, 3, CAST(15.0 AS Decimal(3, 1)), CAST(0x074075DC010D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (5, 17, N'ALBPAR    ', N'GPAU      ', 12, 1, 0, 7, CAST(6.0 AS Decimal(3, 1)), CAST(0x0710EB50BB0C0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (5, 17, N'BAHREIN   ', N'GPBH      ', 6, 1, 0, 13, NULL, CAST(0x0710A140970D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (5, 17, N'CATALUNYA ', N'GPES      ', 13, 1, 0, 13, NULL, CAST(0x0700BE1C260E0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (5, 17, N'MONACO    ', N'GPMO      ', 8, 1, 0, 5, CAST(10.0 AS Decimal(3, 1)), CAST(0x07D0B4544F130000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (5, 17, N'MONTREAL  ', N'GPCA      ', 8, 1, 0, 10, CAST(1.0 AS Decimal(3, 1)), CAST(0x07309754270D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (5, 17, N'SEPANG    ', N'GPMA      ', 8, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (5, 17, N'SHANGHAI  ', N'GPCH      ', 13, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (5, 17, N'SILVERSTON', N'GPGB      ', 6, 1, 0, 7, CAST(6.0 AS Decimal(3, 1)), CAST(0x07F0F159070D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (6, 16, N'ALBPAR    ', N'GPAU      ', 9, 1, 0, 8, CAST(4.0 AS Decimal(3, 1)), CAST(0x0790B757BD0C0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (6, 16, N'BAHREIN   ', N'GPBH      ', 5, 1, 0, 4, CAST(12.0 AS Decimal(3, 1)), CAST(0x07108479760D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (6, 16, N'CATALUNYA ', N'GPES      ', 10, 1, 0, 7, CAST(6.0 AS Decimal(3, 1)), CAST(0x07002787070E0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (6, 16, N'MONACO    ', N'GPMO      ', 17, 1, 0, 9, CAST(2.0 AS Decimal(3, 1)), CAST(0x070039FC52130000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (6, 16, N'MONTREAL  ', N'GPCA      ', 17, 1, 0, 7, CAST(6.0 AS Decimal(3, 1)), CAST(0x0770D026270D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (6, 16, N'SEPANG    ', N'GPMA      ', 15, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (6, 16, N'SHANGHAI  ', N'GPCH      ', 11, 1, 0, 8, CAST(4.0 AS Decimal(3, 1)), CAST(0x07D087BC970D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (6, 16, N'SILVERSTON', N'GPGB      ', 21, 1, 0, 9, CAST(2.0 AS Decimal(3, 1)), CAST(0x07704E4F080D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (7, 35, N'ALBPAR    ', N'GPAU      ', 8, 1, 0, 10, CAST(1.0 AS Decimal(3, 1)), CAST(0x0750B9DDC50C0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (7, 35, N'BAHREIN   ', N'GPBH      ', 11, 1, 0, 3, CAST(15.0 AS Decimal(3, 1)), CAST(0x0750C526750D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (7, 35, N'CATALUNYA ', N'GPES      ', NULL, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (7, 35, N'MONACO    ', N'GPMO      ', 13, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (7, 35, N'MONTREAL  ', N'GPCA      ', 22, 1, 0, 13, NULL, CAST(0x07B01B73270D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (7, 35, N'SEPANG    ', N'GPMA      ', 11, 1, 0, 6, CAST(8.0 AS Decimal(3, 1)), CAST(0x075044BCE70D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (7, 35, N'SHANGHAI  ', N'GPCH      ', 6, 1, 0, 9, CAST(2.0 AS Decimal(3, 1)), CAST(0x07006F21990D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (7, 35, N'SILVERSTON', N'GPGB      ', 7, 1, 1, 19, NULL, CAST(0x0700F823450D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (8, 36, N'ALBPAR    ', N'GPAU      ', 7, 1, 0, 1, CAST(25.0 AS Decimal(3, 1)), CAST(0x0790B492940C0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (8, 36, N'BAHREIN   ', N'GPBH      ', 8, 1, 0, 2, CAST(18.0 AS Decimal(3, 1)), CAST(0x079077F46E0D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (8, 36, N'CATALUNYA ', N'GPES      ', 4, 1, 0, 2, CAST(18.0 AS Decimal(3, 1)), CAST(0x07E048F9E30D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (8, 36, N'MONACO    ', N'GPMO      ', 5, 1, 0, 10, CAST(1.0 AS Decimal(3, 1)), CAST(0x07E08B5558130000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (8, 36, N'MONTREAL  ', N'GPCA      ', 10, 1, 0, 9, CAST(2.0 AS Decimal(3, 1)), CAST(0x07F05445270D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (8, 36, N'SEPANG    ', N'GPMA      ', 10, 1, 0, 7, CAST(6.0 AS Decimal(3, 1)), CAST(0x0780F06EEF0D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (8, 36, N'SHANGHAI  ', N'GPCH      ', 2, 1, 0, 2, CAST(18.0 AS Decimal(3, 1)), CAST(0x07903E597F0D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (8, 36, N'SILVERSTON', N'GPGB      ', 8, 1, 0, 5, CAST(10.0 AS Decimal(3, 1)), CAST(0x07901A53040D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (9, 33, N'ALBPAR    ', N'GPAU      ', 19, 1, 0, 15, NULL, CAST(0x0710C537DC0C0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (9, 33, N'BAHREIN   ', N'GPBH      ', 19, 1, 0, 19, NULL, CAST(0x07A04D2BB10D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (9, 33, N'CATALUNYA ', N'GPES      ', 20, 1, 0, 18, NULL, CAST(0x07403DB2490E0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (9, 33, N'MONACO    ', N'GPMO      ', 20, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (9, 33, N'MONTREAL  ', N'GPCA      ', 19, 1, 0, 17, NULL, CAST(0x07F09A084B0D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (9, 33, N'SEPANG    ', N'GPMA      ', 19, 1, 0, 13, NULL, CAST(0x07D06F1F1A0E0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (9, 33, N'SHANGHAI  ', N'GPCH      ', 18, 1, 0, 15, NULL, CAST(0x071047D0C00D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (9, 33, N'SILVERSTON', N'GPGB      ', 19, 1, 0, 16, NULL, CAST(0x07106321130D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (10, 34, N'ALBPAR    ', N'GPAU      ', 20, 1, 0, 17, NULL, CAST(0x07D0C8EBFF0C0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (10, 34, N'BAHREIN   ', N'GPBH      ', 21, 1, 0, 20, NULL, CAST(0x07E08F3AB10D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (10, 34, N'CATALUNYA ', N'GPES      ', 21, 1, 0, 19, NULL, CAST(0x07807FC1490E0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (10, 34, N'MONACO    ', N'GPMO      ', 22, 1, 0, 14, NULL, CAST(0x07506C4360130000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (10, 34, N'MONTREAL  ', N'GPCA      ', 20, 1, 0, 19, NULL, CAST(0x07701F274B0D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (10, 34, N'SEPANG    ', N'GPMA      ', 21, 1, 0, 16, NULL, CAST(0x079073D33D0E0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (10, 34, N'SHANGHAI  ', N'GPCH      ', 19, 1, 0, 17, NULL, CAST(0x07702AE7C00D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (10, 34, N'SILVERSTON', N'GPGB      ', 20, 1, 0, 17, NULL, CAST(0x07C084F1250D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (11, 2, N'ALBPAR    ', N'GPAU      ', 15, 1, 0, 11, NULL, CAST(0x07109285C60C0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (11, 2, N'BAHREIN   ', N'GPBH      ', 12, 1, 0, 6, CAST(8.0 AS Decimal(3, 1)), CAST(0x070019FB7E0D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (11, 2, N'CATALUNYA ', N'GPES      ', 9, 1, 0, 9, CAST(2.0 AS Decimal(3, 1)), CAST(0x07E0A5200F0E0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (11, 2, N'MONACO    ', N'GPMO      ', 7, 1, 1, 16, NULL, CAST(0x07E01A3219140000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (11, 2, N'MONTREAL  ', N'GPCA      ', 12, 1, 0, 11, NULL, CAST(0x07309754270D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (11, 2, N'SEPANG    ', N'GPMA      ', 9, 1, 0, 9, CAST(2.0 AS Decimal(3, 1)), CAST(0x07E06EAAFD0D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (11, 2, N'SHANGHAI  ', N'GPCH      ', 12, 1, 0, 11, NULL, CAST(0x0750FE599F0D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (11, 2, N'SILVERSTON', N'GPGB      ', 13, 1, 1, 20, NULL, CAST(0x07001031D40D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (12, 1, N'ALBPAR    ', N'GPAU      ', 10, 1, 0, 9, CAST(2.0 AS Decimal(3, 1)), CAST(0x0790E035C50C0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (12, 1, N'BAHREIN   ', N'GPBH      ', 10, 1, 0, 10, CAST(1.0 AS Decimal(3, 1)), CAST(0x07909051850D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (12, 1, N'CATALUNYA ', N'GPES      ', 14, 1, 0, 8, CAST(4.0 AS Decimal(3, 1)), CAST(0x076012CC0D0E0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (12, 1, N'MONACO    ', N'GPMO      ', 9, 1, 0, 6, CAST(8.0 AS Decimal(3, 1)), CAST(0x0770D04C50130000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (12, 1, N'MONTREAL  ', N'GPCA      ', 14, 1, 0, 12, NULL, CAST(0x0770D963270D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (12, 1, N'SEPANG    ', N'GPMA      ', 7, 1, 0, 17, NULL, CAST(0x07D0B5E23D0E0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (12, 1, N'SHANGHAI  ', N'GPCH      ', 8, 1, 0, 5, CAST(10.0 AS Decimal(3, 1)), CAST(0x0760CB518E0D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (12, 1, N'SILVERSTON', N'GPGB      ', 10, 1, 0, 13, NULL, CAST(0x0710FA170D0D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (13, 30, N'ALBPAR    ', N'GPAU      ', 6, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (13, 30, N'BAHREIN   ', N'GPBH      ', 1, 1, 0, 9, CAST(2.0 AS Decimal(3, 1)), CAST(0x07809109820D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (13, 30, N'CATALUNYA ', N'GPES      ', 1, 1, 0, 6, CAST(8.0 AS Decimal(3, 1)), CAST(0x078072F3060E0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (13, 30, N'MONACO    ', N'GPMO      ', 1, 1, 0, 1, CAST(25.0 AS Decimal(3, 1)), CAST(0x0780938742130000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (13, 30, N'MONTREAL  ', N'GPCA      ', 4, 1, 0, 5, CAST(10.0 AS Decimal(3, 1)), CAST(0x0740752F090D0000 AS Time))
GO
print 'Processed 100 total records'
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (13, 30, N'SEPANG    ', N'GPMA      ', 6, 1, 0, 4, CAST(12.0 AS Decimal(3, 1)), CAST(0x07905712DA0D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (13, 30, N'SHANGHAI  ', N'GPCH      ', 4, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (13, 30, N'SILVERSTON', N'GPGB      ', 2, 1, 0, 1, CAST(25.0 AS Decimal(3, 1)), CAST(0x07006C9DFD0C0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (14, 29, N'ALBPAR    ', N'GPAU      ', 3, 1, 0, 5, CAST(10.0 AS Decimal(3, 1)), CAST(0x075074B1AF0C0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (14, 29, N'BAHREIN   ', N'GPBH      ', 9, 1, 0, 5, CAST(10.0 AS Decimal(3, 1)), CAST(0x0700E9857E0D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (14, 29, N'CATALUNYA ', N'GPES      ', 2, 1, 0, 12, NULL, CAST(0x07C07B0D260E0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (14, 29, N'MONACO    ', N'GPMO      ', 2, 1, 0, 4, CAST(12.0 AS Decimal(3, 1)), CAST(0x07E0A1CF4A130000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (14, 29, N'MONTREAL  ', N'GPCA      ', 2, 1, 0, 3, CAST(15.0 AS Decimal(3, 1)), CAST(0x07D0D220E90C0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (14, 29, N'SEPANG    ', N'GPMA      ', 4, 1, 0, 3, CAST(15.0 AS Decimal(3, 1)), CAST(0x07E04DCCD90D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (14, 29, N'SHANGHAI  ', N'GPCH      ', 1, 1, 0, 3, CAST(15.0 AS Decimal(3, 1)), CAST(0x0730EBA1800D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (14, 29, N'SILVERSTON', N'GPGB      ', 1, 1, 0, 4, CAST(12.0 AS Decimal(3, 1)), CAST(0x0780483C020D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (15, 5, N'ALBPAR    ', N'GPAU      ', 1, 1, 0, 3, CAST(15.0 AS Decimal(3, 1)), CAST(0x07506ADDA10C0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (15, 5, N'BAHREIN   ', N'GPBH      ', 2, 1, 0, 1, CAST(25.0 AS Decimal(3, 1)), CAST(0x07203D86690D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (15, 5, N'CATALUNYA ', N'GPES      ', 3, 1, 0, 4, CAST(12.0 AS Decimal(3, 1)), CAST(0x07506A38F50D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (15, 5, N'MONACO    ', N'GPMO      ', 3, 1, 0, 2, CAST(18.0 AS Decimal(3, 1)), CAST(0x07408B8C44130000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (15, 5, N'MONTREAL  ', N'GPCA      ', 1, 1, 0, 1, CAST(25.0 AS Decimal(3, 1)), CAST(0x077044A0DF0C0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (15, 5, N'SEPANG    ', N'GPMA      ', 1, 1, 0, 1, CAST(25.0 AS Decimal(3, 1)), CAST(0x0790A189D20D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (15, 5, N'SHANGHAI  ', N'GPCH      ', 9, 1, 0, 4, CAST(12.0 AS Decimal(3, 1)), CAST(0x07E0E4C0800D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (15, 5, N'SILVERSTON', N'GPGB      ', 3, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (16, 7, N'ALBPAR    ', N'GPAU      ', 2, 1, 0, 6, CAST(8.0 AS Decimal(3, 1)), CAST(0x0790D177B00C0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (16, 7, N'BAHREIN   ', N'GPBH      ', 7, 1, 0, 7, CAST(6.0 AS Decimal(3, 1)), CAST(0x07E038B97F0D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (16, 7, N'CATALUNYA ', N'GPES      ', 8, 1, 0, 5, CAST(10.0 AS Decimal(3, 1)), CAST(0x07F0FDFEFA0D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (16, 7, N'MONACO    ', N'GPMO      ', 4, 1, 0, 3, CAST(15.0 AS Decimal(3, 1)), CAST(0x0720044B46130000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (16, 7, N'MONTREAL  ', N'GPCA      ', 5, 1, 0, 4, CAST(12.0 AS Decimal(3, 1)), CAST(0x07A081F6EE0C0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (16, 7, N'SEPANG    ', N'GPMA      ', 5, 1, 0, 2, CAST(18.0 AS Decimal(3, 1)), CAST(0x07307419D50D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (16, 7, N'SHANGHAI  ', N'GPCH      ', NULL, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (16, 7, N'SILVERSTON', N'GPGB      ', 4, 1, 0, 2, CAST(18.0 AS Decimal(3, 1)), CAST(0x07D02612FE0C0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (17, 28, N'ALBPAR    ', N'GPAU      ', 11, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (17, 28, N'BAHREIN   ', N'GPBH      ', 14, 1, 0, 12, NULL, CAST(0x0770EEFE940D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (17, 28, N'CATALUNYA ', N'GPES      ', 15, 1, 0, 15, NULL, CAST(0x0780423B260E0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (17, 28, N'MONACO    ', N'GPMO      ', 11, 1, 0, 11, NULL, CAST(0x07408CE75B130000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (17, 28, N'MONTREAL  ', N'GPCA      ', 9, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (17, 28, N'SEPANG    ', N'GPMA      ', 12, 1, 0, 8, CAST(4.0 AS Decimal(3, 1)), CAST(0x07D08027F20D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (17, 28, N'SHANGHAI  ', N'GPCH      ', 10, 1, 0, 10, CAST(1.0 AS Decimal(3, 1)), CAST(0x0770E6059B0D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (17, 28, N'SILVERSTON', N'GPGB      ', 14, 1, 0, 10, CAST(1.0 AS Decimal(3, 1)), CAST(0x07D0C65C090D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (18, 27, N'ALBPAR    ', N'GPAU      ', 18, 1, 0, 13, NULL, CAST(0x07904019DC0C0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (18, 27, N'BAHREIN   ', N'GPBH      ', 22, 1, 0, 18, NULL, CAST(0x0720C90CB10D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (18, 27, N'CATALUNYA ', N'GPES      ', 16, 1, 0, 11, NULL, CAST(0x078039FE250E0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (18, 27, N'MONACO    ', N'GPMO      ', 19, 1, 0, 13, NULL, CAST(0x074034495C130000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (18, 27, N'MONTREAL  ', N'GPCA      ', 15, 1, 1, 20, NULL, CAST(0x07B07943DA0D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (18, 27, N'SEPANG    ', N'GPMA      ', 14, 1, 0, 12, NULL, CAST(0x07902D101A0E0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (18, 27, N'SHANGHAI  ', N'GPCH      ', 17, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (18, 27, N'SILVERSTON', N'GPGB      ', 17, 1, 0, 14, NULL, CAST(0x07D031480D0D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (19, 13, N'ALBPAR    ', N'GPAU      ', 13, 1, 0, 12, NULL, CAST(0x079016A4C60C0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (19, 13, N'BAHREIN   ', N'GPBH      ', 16, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (19, 13, N'CATALUNYA ', N'GPES      ', 12, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (19, 13, N'MONACO    ', N'GPMO      ', 10, 1, 0, 8, CAST(4.0 AS Decimal(3, 1)), CAST(0x07F079C152130000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (19, 13, N'MONTREAL  ', N'GPCA      ', 7, 1, 0, 6, CAST(8.0 AS Decimal(3, 1)), CAST(0x0770EF30210D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (19, 13, N'SEPANG    ', N'GPMA      ', 17, 1, 0, 10, CAST(1.0 AS Decimal(3, 1)), CAST(0x07D0B277060E0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (19, 13, N'SHANGHAI  ', N'GPCH      ', 15, 1, 0, 12, NULL, CAST(0x07D03890A40D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (19, 13, N'SILVERSTON', N'GPGB      ', 12, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (20, 14, N'ALBPAR    ', N'GPAU      ', 14, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (20, 14, N'BAHREIN   ', N'GPBH      ', 13, 1, 0, 16, NULL, CAST(0x0720C90CB10D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (20, 14, N'CATALUNYA ', N'GPES      ', 11, 1, 0, 10, CAST(1.0 AS Decimal(3, 1)), CAST(0x0740F7EE250E0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (20, 14, N'MONACO    ', N'GPMO      ', 12, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (20, 14, N'MONTREAL  ', N'GPCA      ', 11, 1, 0, 15, NULL, CAST(0x077016EA4A0D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (20, 14, N'SEPANG    ', N'GPMA      ', 13, 1, 0, 18, NULL, CAST(0x0790FF59850E0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (20, 14, N'SHANGHAI  ', N'GPCH      ', 7, 1, 0, 7, CAST(6.0 AS Decimal(3, 1)), CAST(0x0740DCBB920D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (20, 14, N'SILVERSTON', N'GPGB      ', 5, 1, 0, 8, CAST(4.0 AS Decimal(3, 1)), CAST(0x07F0AE79070D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (21, 26, N'ALBPAR    ', N'GPAU      ', 17, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (21, 26, N'BAHREIN   ', N'GPBH      ', 17, 1, 0, 11, NULL, CAST(0x0740B421910D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (21, 26, N'CATALUNYA ', N'GPES      ', 18, 1, 0, 14, NULL, CAST(0x0760A133260E0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (21, 26, N'MONACO    ', N'GPMO      ', 16, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (21, 26, N'MONTREAL  ', N'GPCA      ', 13, 1, 0, 16, NULL, CAST(0x07B058F94A0D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (21, 26, N'SEPANG    ', N'GPMA      ', 16, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (21, 26, N'SHANGHAI  ', N'GPCH      ', 14, 1, 0, 14, NULL, CAST(0x07E0B32EB20D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (21, 26, N'SILVERSTON', N'GPGB      ', 15, 1, 0, 11, NULL, CAST(0x07F05D360A0D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (22, 25, N'ALBPAR    ', N'GPAU      ', 16, 1, 0, 14, NULL, CAST(0x07D08228DC0C0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (22, 25, N'BAHREIN   ', N'GPBH      ', 15, 1, 0, 14, NULL, CAST(0x0790D41B9A0D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (22, 25, N'CATALUNYA ', N'GPES      ', 17, 1, 0, 16, NULL, CAST(0x07C0844A260E0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (22, 25, N'MONACO    ', N'GPMO      ', 14, 1, 0, 12, NULL, CAST(0x07B0B4F95B130000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (22, 25, N'MONTREAL  ', N'GPCA      ', 3, 1, 0, 14, NULL, CAST(0x07F05D82270D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (22, 25, N'SEPANG    ', N'GPMA      ', 18, 1, 0, 11, NULL, CAST(0x07B0715A070E0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (22, 25, N'SHANGHAI  ', N'GPCH      ', 16, 1, 0, 13, NULL, CAST(0x0760C83BB10D0000 AS Time))
INSERT [dbo].[ResultatCourse] ([CodePilote], [NumVoiture], [CodeCircuit], [CodeGP], [PositionGrille], [Qualifie], [Abandon], [Place], [NombrePointsMarques], [TempsCourse]) VALUES (22, 25, N'SILVERSTON', N'GPGB      ', 16, 1, 0, 12, NULL, CAST(0x076076920C0D0000 AS Time))
/****** Object:  Table [dbo].[Soutenir_Pilote]    Script Date: 07/31/2015 11:54:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Soutenir_Pilote](
	[CodeSponsor] [nchar](10) NOT NULL,
	[CodePilote] [int] NOT NULL,
	[MontantUSD] [decimal](18, 3) NOT NULL,
	[NumAgrementFIA] [int] NOT NULL,
 CONSTRAINT [PK_Soutenir_Pilote] PRIMARY KEY CLUSTERED 
(
	[CodeSponsor] ASC,
	[CodePilote] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Soutenir_Pilote] ([CodeSponsor], [CodePilote], [MontantUSD], [NumAgrementFIA]) VALUES (N'HEADSHOUL ', 12, CAST(500145.000 AS Decimal(18, 3)), 200)
INSERT [dbo].[Soutenir_Pilote] ([CodeSponsor], [CodePilote], [MontantUSD], [NumAgrementFIA]) VALUES (N'HEADSHOUL ', 15, CAST(500000.000 AS Decimal(18, 3)), 200)
INSERT [dbo].[Soutenir_Pilote] ([CodeSponsor], [CodePilote], [MontantUSD], [NumAgrementFIA]) VALUES (N'MCGREGOR  ', 2, CAST(150000.000 AS Decimal(18, 3)), 111)
INSERT [dbo].[Soutenir_Pilote] ([CodeSponsor], [CodePilote], [MontantUSD], [NumAgrementFIA]) VALUES (N'MEDION    ', 5, CAST(25000.000 AS Decimal(18, 3)), 112)
INSERT [dbo].[Soutenir_Pilote] ([CodeSponsor], [CodePilote], [MontantUSD], [NumAgrementFIA]) VALUES (N'MILLE     ', 3, CAST(500000.000 AS Decimal(18, 3)), 117)
INSERT [dbo].[Soutenir_Pilote] ([CodeSponsor], [CodePilote], [MontantUSD], [NumAgrementFIA]) VALUES (N'MILLE     ', 9, CAST(250000.000 AS Decimal(18, 3)), 117)
INSERT [dbo].[Soutenir_Pilote] ([CodeSponsor], [CodePilote], [MontantUSD], [NumAgrementFIA]) VALUES (N'WIHURI    ', 22, CAST(1250000.000 AS Decimal(18, 3)), 118)
/****** Object:  Table [dbo].[Affecter]    Script Date: 07/31/2015 11:54:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Affecter](
	[CodePilote] [int] NOT NULL,
	[NumVoiture] [int] NOT NULL,
	[NumContrat] [int] NOT NULL,
 CONSTRAINT [PK_Affecter] PRIMARY KEY CLUSTERED 
(
	[CodePilote] ASC,
	[NumVoiture] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Affecter] ([CodePilote], [NumVoiture], [NumContrat]) VALUES (1, 31, 31709)
INSERT [dbo].[Affecter] ([CodePilote], [NumVoiture], [NumContrat]) VALUES (2, 32, 13783)
INSERT [dbo].[Affecter] ([CodePilote], [NumVoiture], [NumContrat]) VALUES (3, 21, 11136)
INSERT [dbo].[Affecter] ([CodePilote], [NumVoiture], [NumContrat]) VALUES (4, 19, 15355)
INSERT [dbo].[Affecter] ([CodePilote], [NumVoiture], [NumContrat]) VALUES (5, 17, 22755)
INSERT [dbo].[Affecter] ([CodePilote], [NumVoiture], [NumContrat]) VALUES (6, 16, 15331)
INSERT [dbo].[Affecter] ([CodePilote], [NumVoiture], [NumContrat]) VALUES (7, 35, 34728)
INSERT [dbo].[Affecter] ([CodePilote], [NumVoiture], [NumContrat]) VALUES (8, 36, 769)
INSERT [dbo].[Affecter] ([CodePilote], [NumVoiture], [NumContrat]) VALUES (9, 33, 33942)
INSERT [dbo].[Affecter] ([CodePilote], [NumVoiture], [NumContrat]) VALUES (10, 34, 33174)
INSERT [dbo].[Affecter] ([CodePilote], [NumVoiture], [NumContrat]) VALUES (11, 2, 21780)
INSERT [dbo].[Affecter] ([CodePilote], [NumVoiture], [NumContrat]) VALUES (12, 1, 28520)
INSERT [dbo].[Affecter] ([CodePilote], [NumVoiture], [NumContrat]) VALUES (13, 30, 21888)
INSERT [dbo].[Affecter] ([CodePilote], [NumVoiture], [NumContrat]) VALUES (14, 29, 10089)
INSERT [dbo].[Affecter] ([CodePilote], [NumVoiture], [NumContrat]) VALUES (15, 5, 5245)
INSERT [dbo].[Affecter] ([CodePilote], [NumVoiture], [NumContrat]) VALUES (16, 7, 30509)
INSERT [dbo].[Affecter] ([CodePilote], [NumVoiture], [NumContrat]) VALUES (17, 28, 4872)
INSERT [dbo].[Affecter] ([CodePilote], [NumVoiture], [NumContrat]) VALUES (18, 27, 22293)
INSERT [dbo].[Affecter] ([CodePilote], [NumVoiture], [NumContrat]) VALUES (19, 13, 22336)
INSERT [dbo].[Affecter] ([CodePilote], [NumVoiture], [NumContrat]) VALUES (20, 14, 21239)
INSERT [dbo].[Affecter] ([CodePilote], [NumVoiture], [NumContrat]) VALUES (21, 26, 5793)
INSERT [dbo].[Affecter] ([CodePilote], [NumVoiture], [NumContrat]) VALUES (22, 25, 33056)
/****** Object:  ForeignKey [FK_Ecurie_Fournisseur]    Script Date: 07/31/2015 11:54:15 ******/
ALTER TABLE [dbo].[Ecurie]  WITH CHECK ADD  CONSTRAINT [FK_Ecurie_Fournisseur] FOREIGN KEY([CodeFournisseurPneumatiques])
REFERENCES [dbo].[Fournisseur] ([CodeFournisseurPneumatiques])
GO
ALTER TABLE [dbo].[Ecurie] CHECK CONSTRAINT [FK_Ecurie_Fournisseur]
GO
/****** Object:  ForeignKey [FK_Circuit_Pays]    Script Date: 07/31/2015 11:54:15 ******/
ALTER TABLE [dbo].[Circuit]  WITH CHECK ADD  CONSTRAINT [FK_Circuit_Pays] FOREIGN KEY([Localisation])
REFERENCES [dbo].[Pays] ([idPays2])
GO
ALTER TABLE [dbo].[Circuit] CHECK CONSTRAINT [FK_Circuit_Pays]
GO
/****** Object:  ForeignKey [FK_PlanificationGP_Circuit]    Script Date: 07/31/2015 11:54:15 ******/
ALTER TABLE [dbo].[PlanificationGP]  WITH CHECK ADD  CONSTRAINT [FK_PlanificationGP_Circuit] FOREIGN KEY([CodeCircuit])
REFERENCES [dbo].[Circuit] ([CodeCircuit])
GO
ALTER TABLE [dbo].[PlanificationGP] CHECK CONSTRAINT [FK_PlanificationGP_Circuit]
GO
/****** Object:  ForeignKey [FK_PlanificationGP_GrandPrix]    Script Date: 07/31/2015 11:54:15 ******/
ALTER TABLE [dbo].[PlanificationGP]  WITH CHECK ADD  CONSTRAINT [FK_PlanificationGP_GrandPrix] FOREIGN KEY([CodeGP])
REFERENCES [dbo].[GrandPrix] ([CodeGP])
GO
ALTER TABLE [dbo].[PlanificationGP] CHECK CONSTRAINT [FK_PlanificationGP_GrandPrix]
GO
/****** Object:  ForeignKey [FK_Pilote_Ecurie]    Script Date: 07/31/2015 11:54:15 ******/
ALTER TABLE [dbo].[Pilote]  WITH CHECK ADD  CONSTRAINT [FK_Pilote_Ecurie] FOREIGN KEY([CodeEcurie])
REFERENCES [dbo].[Ecurie] ([CodeEcurie])
GO
ALTER TABLE [dbo].[Pilote] CHECK CONSTRAINT [FK_Pilote_Ecurie]
GO
/****** Object:  ForeignKey [FK_Voiture_Ecurie]    Script Date: 07/31/2015 11:54:15 ******/
ALTER TABLE [dbo].[Voiture]  WITH CHECK ADD  CONSTRAINT [FK_Voiture_Ecurie] FOREIGN KEY([CodeEcurie])
REFERENCES [dbo].[Ecurie] ([CodeEcurie])
GO
ALTER TABLE [dbo].[Voiture] CHECK CONSTRAINT [FK_Voiture_Ecurie]
GO
/****** Object:  ForeignKey [FK_Soutenir_Ecurie_Ecurie]    Script Date: 07/31/2015 11:54:15 ******/
ALTER TABLE [dbo].[Soutenir_Ecurie]  WITH CHECK ADD  CONSTRAINT [FK_Soutenir_Ecurie_Ecurie] FOREIGN KEY([CodeEcurie])
REFERENCES [dbo].[Ecurie] ([CodeEcurie])
GO
ALTER TABLE [dbo].[Soutenir_Ecurie] CHECK CONSTRAINT [FK_Soutenir_Ecurie_Ecurie]
GO
/****** Object:  ForeignKey [FK_Soutenir_Ecurie_Sponsor]    Script Date: 07/31/2015 11:54:15 ******/
ALTER TABLE [dbo].[Soutenir_Ecurie]  WITH CHECK ADD  CONSTRAINT [FK_Soutenir_Ecurie_Sponsor] FOREIGN KEY([CodeSponsor])
REFERENCES [dbo].[Sponsor] ([CodeSponsor])
GO
ALTER TABLE [dbo].[Soutenir_Ecurie] CHECK CONSTRAINT [FK_Soutenir_Ecurie_Sponsor]
GO
/****** Object:  ForeignKey [FK_ResultatCourse_Pilote]    Script Date: 07/31/2015 11:54:15 ******/
ALTER TABLE [dbo].[ResultatCourse]  WITH CHECK ADD  CONSTRAINT [FK_ResultatCourse_Pilote] FOREIGN KEY([CodePilote])
REFERENCES [dbo].[Pilote] ([CodePilote])
GO
ALTER TABLE [dbo].[ResultatCourse] CHECK CONSTRAINT [FK_ResultatCourse_Pilote]
GO
/****** Object:  ForeignKey [FK_ResultatCourse_PlanificationGP]    Script Date: 07/31/2015 11:54:15 ******/
ALTER TABLE [dbo].[ResultatCourse]  WITH CHECK ADD  CONSTRAINT [FK_ResultatCourse_PlanificationGP] FOREIGN KEY([CodeCircuit], [CodeGP])
REFERENCES [dbo].[PlanificationGP] ([CodeCircuit], [CodeGP])
GO
ALTER TABLE [dbo].[ResultatCourse] CHECK CONSTRAINT [FK_ResultatCourse_PlanificationGP]
GO
/****** Object:  ForeignKey [FK_ResultatCourse_Voiture]    Script Date: 07/31/2015 11:54:15 ******/
ALTER TABLE [dbo].[ResultatCourse]  WITH CHECK ADD  CONSTRAINT [FK_ResultatCourse_Voiture] FOREIGN KEY([NumVoiture])
REFERENCES [dbo].[Voiture] ([NumVoiture])
GO
ALTER TABLE [dbo].[ResultatCourse] CHECK CONSTRAINT [FK_ResultatCourse_Voiture]
GO
/****** Object:  ForeignKey [FK_Soutenir_Pilote_Pilote]    Script Date: 07/31/2015 11:54:15 ******/
ALTER TABLE [dbo].[Soutenir_Pilote]  WITH CHECK ADD  CONSTRAINT [FK_Soutenir_Pilote_Pilote] FOREIGN KEY([CodePilote])
REFERENCES [dbo].[Pilote] ([CodePilote])
GO
ALTER TABLE [dbo].[Soutenir_Pilote] CHECK CONSTRAINT [FK_Soutenir_Pilote_Pilote]
GO
/****** Object:  ForeignKey [FK_Soutenir_Pilote_Sponsor]    Script Date: 07/31/2015 11:54:15 ******/
ALTER TABLE [dbo].[Soutenir_Pilote]  WITH CHECK ADD  CONSTRAINT [FK_Soutenir_Pilote_Sponsor] FOREIGN KEY([CodeSponsor])
REFERENCES [dbo].[Sponsor] ([CodeSponsor])
GO
ALTER TABLE [dbo].[Soutenir_Pilote] CHECK CONSTRAINT [FK_Soutenir_Pilote_Sponsor]
GO
/****** Object:  ForeignKey [FK_Affecter_Pilote]    Script Date: 07/31/2015 11:54:15 ******/
ALTER TABLE [dbo].[Affecter]  WITH CHECK ADD  CONSTRAINT [FK_Affecter_Pilote] FOREIGN KEY([CodePilote])
REFERENCES [dbo].[Pilote] ([CodePilote])
GO
ALTER TABLE [dbo].[Affecter] CHECK CONSTRAINT [FK_Affecter_Pilote]
GO
/****** Object:  ForeignKey [FK_Affecter_Voiture]    Script Date: 07/31/2015 11:54:15 ******/
ALTER TABLE [dbo].[Affecter]  WITH CHECK ADD  CONSTRAINT [FK_Affecter_Voiture] FOREIGN KEY([NumVoiture])
REFERENCES [dbo].[Voiture] ([NumVoiture])
GO
ALTER TABLE [dbo].[Affecter] CHECK CONSTRAINT [FK_Affecter_Voiture]
GO
