CREATE TABLE [dbo].[WorkCenterShift]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [WorkCenterId] INT NOT NULL, 
    [ShiftId] INT NOT NULL, 
    CONSTRAINT [FK_WorkCenterShift_WorkCenter] FOREIGN KEY ([WorkCenterId]) REFERENCES [WorkCenter]([Id]), 
    CONSTRAINT [FK_WorkCenterShift_Shift] FOREIGN KEY ([ShiftId]) REFERENCES [Shift]([Id])
)

GO

CREATE UNIQUE INDEX [IX_WorkCenterShift_Unique] ON [dbo].[WorkCenterShift] ([ShiftId], [WorkCenterId])
