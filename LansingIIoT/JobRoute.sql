CREATE TABLE [dbo].[JobRoute]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [JobId] INT NOT NULL, 
    [OperationNo] NUMERIC(10) NOT NULL, 
    [OperationQuantity] FLOAT NULL, 
    [WorkCenterId] INT NULL, 
    [DueDate] DATETIME NULL, 
    [ERPId] INT NULL, 
    [QuantityComplete] FLOAT NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    [ActualStartDate] DATETIME NULL, 
    [ActualFinishDate] DATETIME NULL, 
    [EstSetupTime] FLOAT NULL, 
    [EstProdTimePerUnit] FLOAT NULL, 
    [ActualSetupTime] FLOAT NULL, 
    [ActualProdTimePerUnit] FLOAT NULL, 
    CONSTRAINT [FK_JobRoute_Job] FOREIGN KEY ([JobId]) REFERENCES [Job]([Id]), 
    CONSTRAINT [FK_JobRoute_WorkCenter] FOREIGN KEY ([WorkCenterId]) REFERENCES [WorkCenter]([Id])
)
