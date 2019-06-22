CREATE TABLE [dbo].[WorkInstructionType]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [WorkInstructionType] NVARCHAR(200) NULL, 
    [SystemTypeId] INT NULL
)
