CREATE TABLE [dbo].[PlannedProductionTime]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [StartDateTime] DATETIME NOT NULL, 
    [EndDateTime] DATETIME NOT NULL, 
    [WorkCenterId] INT NOT NULL, 
    [TotalHours] FLOAT NULL, 
    [ScheduleLossId] INT NULL, 
    CONSTRAINT [FK_PlannedProductionTime_WorkCenter] FOREIGN KEY ([WorkCenterId]) REFERENCES [WorkCenter]([Id]), 
    CONSTRAINT [FK_PlannedProductionTime_ScheduleLoss] FOREIGN KEY ([ScheduleLossId]) REFERENCES [ScheduleLoss]([Id])
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'This field will be calculated',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PlannedProductionTime',
    @level2type = N'COLUMN',
    @level2name = N'TotalHours'