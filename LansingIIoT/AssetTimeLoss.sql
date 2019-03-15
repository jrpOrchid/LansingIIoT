CREATE TABLE [dbo].[AvailabilityLoss]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [AssetId] INT NOT NULL, 
    [StartDateTime] DATETIME NOT NULL, 
    [EndDateTime] DATETIME NOT NULL, 
    [TotalHours] FLOAT NULL, 
    [ReasonId] INT NULL, 
    CONSTRAINT [FK_AvailabilityLoss_AvailabilityLossReason] FOREIGN KEY ([ReasonId]) REFERENCES [AvailabilityLossReason]([Id]), 
    CONSTRAINT [FK_AvailabilityLoss_Asset] FOREIGN KEY ([AssetId]) REFERENCES [Asset]([Id])
)
