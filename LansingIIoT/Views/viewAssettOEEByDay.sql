CREATE VIEW [dbo].[viewAssettOEEByDay]
	AS SELECT        dbo.Asset.AssetNumber, PPT.PlannedProductionTime, ISNULL(ATL.TimeLoss, 0) AS AssetTimeLoss, PPT.PlannedProductionTime - ISNULL(ATL.TimeLoss, 0) AS RunTime, (PPT.PlannedProductionTime - ISNULL(ATL.TimeLoss, 
                         0)) / PPT.PlannedProductionTime AS Availability
FROM            dbo.Asset INNER JOIN
                             (SELECT        SUM(TotalHours) AS PlannedProductionTime, AssetId
                               FROM            dbo.AssetPlannedProductionTime
                               GROUP BY AssetId) AS PPT ON dbo.Asset.Id = PPT.AssetId LEFT OUTER JOIN
                             (SELECT        SUM(TotalHours) AS TimeLoss, AssetId
                               FROM            dbo.AssetTimeLoss
                               GROUP BY AssetId) AS ATL ON dbo.Asset.Id = ATL.AssetId LEFT OUTER JOIN
                         dbo.ActualProduction ON dbo.Asset.Id = dbo.ActualProduction.AssetId
