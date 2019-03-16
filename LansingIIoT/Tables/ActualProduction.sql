CREATE TABLE [dbo].[ActualProduction]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [JobRouteId] INT NULL, 
    [AssetId] INT NULL, 
    [EmployeeId] INT NULL, 
    [StartDateTime] DATETIME NULL, 
    [EndDateTime] DATETIME NULL, 
    [QuantityComplete] FLOAT NULL, 
    CONSTRAINT [FK_ActualProduction_Asset] FOREIGN KEY ([AssetId]) REFERENCES [Asset]([Id]), 
    CONSTRAINT [FK_ActualProduction_JobRoute] FOREIGN KEY ([JobRouteId]) REFERENCES [JobRoute]([Id]), 
    CONSTRAINT [FK_ActualProduction_Employee] FOREIGN KEY ([EmployeeId]) REFERENCES [Employee]([Id])
)
