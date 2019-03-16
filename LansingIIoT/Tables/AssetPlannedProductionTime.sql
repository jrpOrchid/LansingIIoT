CREATE TABLE [dbo].[AssetPlannedProductionTime]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [StartDateTime] DATETIME NOT NULL, 
    [EndDateTime] DATETIME NOT NULL, 
    [AssetId] INT NOT NULL, 
    [TotalHours] FLOAT NULL, 
    [SiteScheduleLossId] INT NULL, 
    CONSTRAINT [FK_AssetPlannedProductionTime_ScheduleLoss] FOREIGN KEY ([SiteScheduleLossId]) REFERENCES [SiteScheduleLoss]([Id]), 
    CONSTRAINT [FK_AssetPlannedProductionTime_Asset] FOREIGN KEY ([AssetId]) REFERENCES [Asset]([Id])
)

GO