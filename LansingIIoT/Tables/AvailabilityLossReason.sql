CREATE TABLE [dbo].[AvailabilityLossReason]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Code] NVARCHAR(10) NOT NULL, 
    [Description] NVARCHAR(500) NOT NULL, 
    [Planned] BIT NOT NULL DEFAULT 0, 
    [SlowCycle] BIT NOT NULL DEFAULT 0, 
    [SystemId] INT NOT NULL DEFAULT 0, 
    [CategoryId] INT NULL, 
    CONSTRAINT [FK_AvailabilityLossReason_AvailabilityLossReasonCategory] FOREIGN KEY ([CategoryId]) REFERENCES [AvailabilityLossReasonCategory]([Id])
)

GO

CREATE UNIQUE INDEX [IX_AvailabilityLossReason_Unique] ON [dbo].[AvailabilityLossReason] ([Code])
