CREATE TABLE [dbo].[Item]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [PartNo] NVARCHAR(50) NOT NULL, 
    [PartRev] NVARCHAR(50) NOT NULL, 
    [PartDesc] NVARCHAR(1000) NULL, 
    [PartFacility] NVARCHAR(200) NULL, 
    [ItemFamilyId] INT NULL, 
    [ERPId] INT NULL, 
    CONSTRAINT [FK_Item_ItemFamily] FOREIGN KEY ([ItemFamilyId]) REFERENCES [ItemFamily]([Id])
)

GO

CREATE UNIQUE INDEX [IX_Item_UniquePart] ON [dbo].[Item] ([PartNo], [PartRev])
