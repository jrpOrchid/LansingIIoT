CREATE TABLE [dbo].[Employee]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [FirstName] NVARCHAR(100) NULL, 
    [MiddleName] NVARCHAR(100) NULL, 
    [LastName] NVARCHAR(100) NULL, 
    [EmployeeNo] NVARCHAR(50) NULL, 
    [EmployeeBadgeId] INT NULL
)
