CREATE TABLE [dbo].[AvailabilityState]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [StateId] INT NOT NULL, 
    [StateName] NVARCHAR(500) NOT NULL
)
