CREATE TABLE [dbo].[EmployeeWorkCenters]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [EmployeeId] INT NOT NULL, 
    [WorkCenterId] INT NOT NULL, 
    CONSTRAINT [FK_EmployeeWorkCenters_Employee] FOREIGN KEY ([EmployeeId]) REFERENCES [Employee]([Id]), 
    CONSTRAINT [FK_EmployeeWorkCenters_WorkCenter] FOREIGN KEY ([WorkCenterId]) REFERENCES [WorkCenter]([Id])
)
