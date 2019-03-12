CREATE TABLE [dbo].[Job]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [JobNo] NVARCHAR(50) NOT NULL, 
    [ItemId] INT NULL, 
    [JobQuantity] FLOAT NULL, 
    [JobTypeId] INT NULL, 
    [Comments] NVARCHAR(MAX) NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    [DueDate] DATE NULL, 
    [Status] NVARCHAR(100) NULL, 
    [UofMId] INT NULL, 
    [LotNumber] NVARCHAR(100) NULL, 
    [ERPId] INT NULL, 
    CONSTRAINT [FK_Job_Item] FOREIGN KEY ([ItemId]) REFERENCES [Item]([Id]), 
    CONSTRAINT [FK_Job_JobType] FOREIGN KEY ([JobTypeId]) REFERENCES [JobType]([Id]), 
    CONSTRAINT [FK_Job_UnitOfMeasure] FOREIGN KEY ([UofMId]) REFERENCES [UnitOfMeasure]([Id]) 
)

GO

CREATE UNIQUE INDEX [IX_Job_UniqueJob] ON [dbo].[Job] ([JobNo])

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Description of Job Hold/resume/cancel/close orders',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Job',
    @level2type = N'COLUMN',
    @level2name = N'Comments'