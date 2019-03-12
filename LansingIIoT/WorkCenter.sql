CREATE TABLE [dbo].[WorkCenter]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [WorkCenterCode] NVARCHAR(50) NULL, 
    [WorkCenterName] NVARCHAR(500) NULL, 
    [ERPId] INT NULL, 
    [QuantityGoal] FLOAT NULL
)
