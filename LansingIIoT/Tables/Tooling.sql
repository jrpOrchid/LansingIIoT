CREATE TABLE [dbo].[Tooling]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [ToolingTypeId] INT NULL, 
    [MajorRevision] NVARCHAR(10) NULL, 
    [MinorRevision] INT NULL, 
    [ToolingDisplay] NVARCHAR(50) NULL, 
    [ToolingStatusId] INT NULL, 
    [PercentUsed] FLOAT NULL, 
    [QuantityRemaining] INT NULL, 
    [MaxLife] INT NULL, 
    [TotalQtyComplete] INT NULL, 
    [ItemId] INT NULL, 
    [MendixSystemId] INT NULL, 
    CONSTRAINT [FK_Tooling_ToolingType] FOREIGN KEY ([ToolingTypeId]) REFERENCES [ToolingType]([Id]), 
    CONSTRAINT [FK_Tooling_ToolingStatus] FOREIGN KEY ([ToolingStatusId]) REFERENCES [ToolingStatus]([Id]), 
    CONSTRAINT [FK_Tooling_Item] FOREIGN KEY ([ItemId]) REFERENCES [Item]([Id])
)
