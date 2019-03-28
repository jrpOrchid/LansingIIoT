CREATE TABLE [dbh].[DaybyHourQuantity]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [DaybyHourId] INT NULL, 
    [QuantityComplete] INT NULL, 
    [JobNo] NVARCHAR(50) NULL, 
    [OperationId] INT NULL, 
    CONSTRAINT [FK_DaybyHourQuantity_DaybyHour] FOREIGN KEY ([DaybyHourId]) REFERENCES [dbh].[DaybyHour]([Id]), 
    CONSTRAINT [FK_DaybyHourQuantity_Operation] FOREIGN KEY ([OperationId]) REFERENCES [dbh].[Operation]([Id])
)
