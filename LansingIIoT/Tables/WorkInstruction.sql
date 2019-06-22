CREATE TABLE [dbo].[WorkInstruction]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Title] NVARCHAR(1000) NULL, 
    [VersionNo] NVARCHAR(50) NULL, 
    [VersionDate] DATETIME NULL, 
    [WorkInstructionTypeId] INT NULL, 
    CONSTRAINT [FK_WorkInstruction_WorkInstructionType] FOREIGN KEY ([WorkInstructionTypeId]) REFERENCES [WorkInstructionType]([Id])
)
