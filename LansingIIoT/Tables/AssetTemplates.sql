CREATE TABLE [dbo].[AssetTemplates]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [AssetId] INT NOT NULL, 
    [name] NVARCHAR(50) NULL, 
    [template] NVARCHAR(2000) NULL, 
    [x] INT NULL, 
    [y] INT NULL, 
    [width] INT NULL, 
    [height] INT NULL, 
    [z] INT NULL, 
    [layout] NVARCHAR(MAX) NULL, 
    [parameters] NVARCHAR(MAX) NULL, 
    CONSTRAINT [FK_AssetTemplates_Asset] FOREIGN KEY ([AssetId]) REFERENCES [Asset]([Id])
)
