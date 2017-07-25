create VIEW [dbo].[ClassementPilotes]
AS
SELECT        TOP (100) PERCENT pi.PrenomPilote + ' ' + pi.NomPilote AS Pilote, ISNULL(r.NombrePointsMarques, 0) AS Points, p.LibellePays
FROM            dbo.Pays AS p INNER JOIN
                         dbo.Circuit AS c ON p.idPays2 = c.Localisation INNER JOIN
                         dbo.PlanificationGP AS pl ON c.CodeCircuit = pl.CodeCircuit INNER JOIN
                         dbo.ResultatCourse AS r ON r.CodeGP = pl.CodeGP INNER JOIN
                         dbo.Pilote AS pi ON pi.CodePilote = r.CodePilote
ORDER BY r.NombrePointsMarques DESC

GO


