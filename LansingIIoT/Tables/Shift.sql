CREATE TABLE [dbo].[Shift]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [ShiftName] NVARCHAR(50) NOT NULL, 
    [StartTime] TIME(1) NULL, 
    [EndTime] TIME(1) NULL, 
    [Enabled] BIT NULL
)
