CREATE TABLE [dbo].[WorkInstructionStep]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [StepNumber] FLOAT NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    [WorkInstructionId] INT NULL, 
    CONSTRAINT [FK_WorkInstructionStep_WorkInstruction] FOREIGN KEY ([WorkInstructionId]) REFERENCES [WorkInstruction]([Id])
)
