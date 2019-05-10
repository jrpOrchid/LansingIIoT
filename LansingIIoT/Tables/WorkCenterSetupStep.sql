CREATE TABLE [dbo].[WorkCenterSetupStep]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [WorkCenterId] INT NOT NULL, 
    [Step] FLOAT NULL, 
    [StepName] NVARCHAR(500) NULL, 
    [Instructions] NVARCHAR(MAX) NULL, 
    CONSTRAINT [FK_WorkCenterSetupStep_WorkCenter] FOREIGN KEY ([WorkCenterId]) REFERENCES [WorkCenter]([Id])
)
