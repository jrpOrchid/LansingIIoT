-- =============================================
-- Author:		Jeff Phillips
-- Create date: 7/8/2019
-- Last Updated: 7/8/2019
-- Description:	Creates a work instruction event for a passed in asset and work instruction type
-- =============================================

CREATE PROCEDURE [dbo].[CreateAssetWIEvent]
	@workInstructionTypeId INT,
	@assetId INT
AS
BEGIN
	-- Insert the Asset to Work Instruction (WI) Event
	INSERT INTO AssetWorkInstructionEvent
							 (AssetId, Id, EventDateTime, EmployeeId)
	SELECT        WorkInstructionAppliesTo.AssetId, WorkInstruction.Id, GETDATE(), @employeeId
	FROM            WorkInstructionAppliesTo INNER JOIN
							 WorkInstruction ON WorkInstructionAppliesTo.WorkInstructionId = WorkInstruction.Id INNER JOIN
							 WorkInstructionType ON WorkInstruction.WorkInstructionTypeId = WorkInstructionType.Id
	WHERE        (WorkInstructionType.SystemTypeId = @workInstructionTypeId) AND (WorkInstructionAppliesTo.AssetId = @assetId)


	-- Get the latest Asset to WI Event Id
	DECLARE @newAssetWIEventID INT
	SET @newAssetWIEventID = SCOPE_IDENTITY()

	-- Insert the Asset to WI Event Details (work instruction steps)
	INSERT INTO AssetWorkInstructionEventDetails
							 (WorkInstructionStepId, StepNumber, Description, Complete, AssetWorkInstructionEventId)
	SELECT        WorkInstructionStep.Id, WorkInstructionStep.StepNumber, WorkInstructionStep.Description, 0, @newAssetWIEventID
	FROM            WorkInstructionAppliesTo INNER JOIN
							 WorkInstruction ON WorkInstructionAppliesTo.WorkInstructionId = WorkInstruction.Id INNER JOIN
							 WorkInstructionType ON WorkInstruction.WorkInstructionTypeId = WorkInstructionType.Id INNER JOIN
							 WorkInstructionStep ON WorkInstruction.Id = WorkInstructionStep.WorkInstructionId
	WHERE        (WorkInstructionType.SystemTypeId = @workInstructionTypeId) AND (WorkInstructionAppliesTo.AssetId = @assetId)
END