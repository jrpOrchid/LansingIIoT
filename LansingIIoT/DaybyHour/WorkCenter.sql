CREATE TABLE [dbh].[WorkCenter]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [BuildingId] INT NULL, 
    [WorkCenterName] NVARCHAR(200) NULL, 
    [HourlyQuantityGoal] INT NULL DEFAULT 0, 
    [IsNDT] BIT NULL, 
    CONSTRAINT [FK_WorkCenter_Building] FOREIGN KEY ([BuildingId]) REFERENCES [dbh].[Building]([Id])
)
