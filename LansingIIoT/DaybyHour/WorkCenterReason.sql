CREATE TABLE [dbh].[WorkCenterReason]
(
	[WorkCenterId] INT NOT NULL PRIMARY KEY, 
    [ReasonCodeId] INT NOT NULL PRIMARY KEY, 
    CONSTRAINT [FK_WorkCenterReason_WorkCenter] FOREIGN KEY ([WorkCenterId]) REFERENCES [dbh].[WorkCenter]([Id]), 
    CONSTRAINT [FK_WorkCenterReason_ReasonCode] FOREIGN KEY ([ReasonCodeId]) REFERENCES [dbh].[ReasonCode]([Id])
)
