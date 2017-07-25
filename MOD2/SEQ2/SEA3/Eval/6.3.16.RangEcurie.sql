create VIEW [dbo].[RangEcurie]
AS
SELECT        e.NomEcurie AS Ecurie, SUM(ISNULL(r.NombrePointsMarques, 0)) AS Points
FROM            dbo.ResultatCourse AS r INNER JOIN
                         dbo.Pilote AS p ON r.CodePilote = p.CodePilote INNER JOIN
                         dbo.Ecurie AS e ON e.CodeEcurie = p.CodeEcurie
GROUP BY e.NomEcurie

GO


