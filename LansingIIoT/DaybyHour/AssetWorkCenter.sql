CREATE TABLE [dbo].[AssetWorkCenter]
(
	[AssetId] INT NOT NULL, 
    [WorkCenterId] INT NOT NULL
	PRIMARY KEY ([AssetId], [WorkCenterId]), 
    CONSTRAINT [FK_AssetWorkCenter_Asset] FOREIGN KEY ([AssetId]) REFERENCES [Asset]([Id]), 
    CONSTRAINT [FK_AssetWorkCenter_WorkCenter] FOREIGN KEY ([WorkCenterId]) REFERENCES [WorkCenter]([Id])
)
