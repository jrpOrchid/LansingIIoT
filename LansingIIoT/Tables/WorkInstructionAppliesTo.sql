CREATE TABLE [dbo].[WorkInstructionAppliesTo]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
	    [WorkInstructionId] INT NULL,
    [AssetId] INT NULL, 
    [ItemId] INT NULL, 
    CONSTRAINT [FK_WorkInstructionAppliesTo_WorkInstruction] FOREIGN KEY ([WorkInstructionId]) REFERENCES [WorkInstruction]([Id]), 
    CONSTRAINT [FK_WorkInstructionAppliesTo_Asset] FOREIGN KEY ([AssetId]) REFERENCES [Asset]([Id]), 
    CONSTRAINT [FK_WorkInstructionAppliesTo_Item] FOREIGN KEY ([ItemId]) REFERENCES [Item]([Id])

)
