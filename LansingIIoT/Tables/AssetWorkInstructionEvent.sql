CREATE TABLE [dbo].[AssetWorkInstructionEvent]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [AssetId] INT NULL, 
    [WorkInstructionId] INT NULL, 
    [EventDateTime] DATETIME NULL, 
    [EmployeeId] INT NULL, 
    CONSTRAINT [FK_AssetWorkInstructionEvent_Employee] FOREIGN KEY ([EmployeeId]) REFERENCES [Employee]([Id]), 
    CONSTRAINT [FK_AssetWorkInstructionEvent_Asset] FOREIGN KEY ([AssetId]) REFERENCES [Asset]([Id]), 
    CONSTRAINT [FK_AssetWorkInstructionEvent_WorkInstruction] FOREIGN KEY ([WorkInstructionId]) REFERENCES [WorkInstruction]([Id])
)
