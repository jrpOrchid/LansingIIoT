CREATE TABLE [dbh].[WorkCenterGroupWorkCenter]
(
	[WorkCenterGroupId] INT NOT NULL PRIMARY KEY, 
    [WorkCenterId] INT NOT NULL PRIMARY KEY, 
    CONSTRAINT [FK_WorkCenterGroupWorkCenter_WorkCenterGroup] FOREIGN KEY ([WorkCenterGroupId]) REFERENCES [dbh].[WorkCenterGroup]([Id]), 
    CONSTRAINT [FK_WorkCenterGroupWorkCenter_WorkCenter] FOREIGN KEY ([WorkCenterId]) REFERENCES [dbh].[WorkCenter]([Id]),
)
