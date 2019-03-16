CREATE TABLE [dbo].[DaybyHourCode]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Description] NVARCHAR(200) NULL, 
    [IsPlanned] BIT NULL
)
