CREATE TABLE [dbo].[ScrapCode]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [ScrapCode] NVARCHAR(50) NULL, 
    [Description] NVARCHAR(2000) NULL
)

GO

CREATE UNIQUE INDEX [IX_ScrapCode_Unique] ON [dbo].[ScrapCode] ([ScrapCode])
