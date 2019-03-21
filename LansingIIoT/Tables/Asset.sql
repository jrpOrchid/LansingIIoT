CREATE TABLE [dbo].[Asset]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [AssetNumber] NVARCHAR(50) NOT NULL, 
    [AssetName] NVARCHAR(1000) NULL, 
    [WorkCenterId] INT NULL, 
    [IPAddress] NVARCHAR(50) NULL, 
    CONSTRAINT [FK_Asset_WorkCenter] FOREIGN KEY ([WorkCenterId]) REFERENCES [WorkCenter]([Id])
)

GO

CREATE INDEX [IX_Asset_Unique] ON [dbo].[Asset] ([AssetNumber])
