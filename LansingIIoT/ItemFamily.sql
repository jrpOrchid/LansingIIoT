CREATE TABLE [dbo].[ItemFamily]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [FamilyName] NVARCHAR(200) NULL, 
    [ERPId] INT NULL, 
    [FamilyCode] NVARCHAR(50) NULL
)
