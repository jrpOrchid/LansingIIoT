CREATE TABLE [dbo].[AssetTimeLoss]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [AssetId] INT NOT NULL, 
    [StartDateTime] DATETIME NOT NULL, 
    [EndDateTime] DATETIME NOT NULL, 
    [TotalHours] FLOAT NULL, 
    [ReasonId] INT NULL, 
    [LoggedByEmployeeId] INT NULL, 
    CONSTRAINT [FK_AssetTimeLoss_AvailabilityLossReason] FOREIGN KEY ([ReasonId]) REFERENCES [AvailabilityLossReason]([Id]), 
    CONSTRAINT [FK_AssetTimeLoss_Asset] FOREIGN KEY ([AssetId]) REFERENCES [Asset]([Id]), 
    CONSTRAINT [FK_AssetTimeLoss_Employee] FOREIGN KEY ([LoggedByEmployeeId]) REFERENCES [Employee]([Id])
)
