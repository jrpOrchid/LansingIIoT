CREATE TABLE [dbo].[AssetWorkInstructionEventDetails]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [AssetWorkInstructionEventId] INT NULL,
	[StepNumber] FLOAT NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    [WorkInstructionStepId] INT NULL, 
    [Complete] BIT NULL, 
    CONSTRAINT [FK_AssetWorkInstructionEventDetails_AssetWorkInstructionEvent] FOREIGN KEY ([AssetWorkInstructionEventId]) REFERENCES [AssetWorkInstructionEvent]([Id]), 
    CONSTRAINT [FK_AssetWorkInstructionEventDetails_WorkInstructionStep] FOREIGN KEY ([WorkInstructionStepId]) REFERENCES [WorkInstructionStep]([Id]), 
)
