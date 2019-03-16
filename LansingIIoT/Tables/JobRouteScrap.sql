CREATE TABLE [dbo].[JobRouteScrap]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [JobRouteId] INT NOT NULL, 
    [JobRouteByHourId] INT NULL, 
    [QuantityScrap] FLOAT NULL, 
    [ScrapCodeId] INT NULL, 
    CONSTRAINT [FK_JobRouteScrap_JobRoute] FOREIGN KEY ([JobRouteId]) REFERENCES [JobRoute]([Id]), 
    CONSTRAINT [FK_JobRouteScrap_JobRouteByHour] FOREIGN KEY ([JobRouteByHourId]) REFERENCES [JobRouteByHour]([Id]), 
    CONSTRAINT [FK_JobRouteScrap_ScrapCode] FOREIGN KEY ([ScrapCodeId]) REFERENCES [ScrapCode]([Id])
)
