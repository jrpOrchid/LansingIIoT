CREATE TABLE [dbo].[UnitOfMeasure]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [UofMAbbreviation] NVARCHAR(20) NOT NULL
)

GO

CREATE UNIQUE INDEX [IX_UnitOfMeasure_Unique] ON [dbo].[UnitOfMeasure] ([UofMAbbreviation])
