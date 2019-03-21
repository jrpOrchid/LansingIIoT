CREATE TABLE [dbo].[WorkCenterDxHCodes]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [DaybyHourCodeId] INT NOT NULL, 
    [WorkCenterId] INT NOT NULL, 
    CONSTRAINT [FK_WorkCenterDxHCodes_DaybyHourCode] FOREIGN KEY ([DaybyHourCodeId]) REFERENCES [DaybyHourCode]([Id]), 
    CONSTRAINT [FK_WorkCenterDxHCodes_WorkCenter] FOREIGN KEY ([WorkCenterId]) REFERENCES [WorkCenter]([Id])
)
