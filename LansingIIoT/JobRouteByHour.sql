CREATE TABLE [dbo].[JobRouteByHour]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [JobRouteId] INT NOT NULL, 
    [LocalTime] TIME(1) NULL, 
    [LocalDate] DATE NULL, 
    [QuantityComplete] FLOAT NULL, 
    [Comments] NVARCHAR(1000) NULL, 
    CONSTRAINT [FK_JobRouteByHour_JobRoute] FOREIGN KEY ([JobRouteId]) REFERENCES [JobRoute]([Id])
)
