CREATE TABLE [dbo].[JobRouteByHour]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [JobRouteId] INT NOT NULL, 
    [LocalTime] TIME(1) NULL, 
    [LocalDate] DATE NULL, 
    [QuantityComplete] FLOAT NULL, 
    [Comments] NVARCHAR(1000) NULL, 
    [ReasonCodeId] INT NULL, 
    [QuantityFailed] FLOAT NULL, 
    [FailedReasonCodeId] INT NULL, 
    CONSTRAINT [FK_JobRouteByHour_JobRoute] FOREIGN KEY ([JobRouteId]) REFERENCES [JobRoute]([Id]), 
    CONSTRAINT [FK_JobRouteByHour_DaybyHourCode] FOREIGN KEY ([ReasonCodeId]) REFERENCES [DaybyHourCode]([Id])
)
