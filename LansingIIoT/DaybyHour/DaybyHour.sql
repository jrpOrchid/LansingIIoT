CREATE TABLE [dbh].[DaybyHour]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [LogDate] DATETIME NULL, 
    [LogTime] INT NULL, 
    [HourlyQuantityGoal] INT NULL, 
    [WorkCenterId] INT NULL, 
    [QuantityFailed] INT NULL, 
    [MissedGoalReasonId] INT NULL, 
    [QtyFailedReasonId] INT NULL, 
    [Comments] NVARCHAR(1000) NULL, 
    CONSTRAINT [FK_DaybyHour_WorkCenter] FOREIGN KEY ([WorkCenterId]) REFERENCES [dbh].[WorkCenter]([Id]), 
    CONSTRAINT [FK_DaybyHour_MissedGoalReasonCode] FOREIGN KEY ([MissedGoalReasonId]) REFERENCES [dbh].[ReasonCode]([Id]), 
    CONSTRAINT [FK_DaybyHour_QtyFailedReasonCode] FOREIGN KEY ([QtyFailedReasonId]) REFERENCES [dbh].[ReasonCode]([Id])
)
