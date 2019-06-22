-- =============================================
-- Author:		Jeff Phillips, taken from this article: https://forum.inductiveautomation.com/t/how-to-change-the-table-in-sql/15639/9
-- Create date: April 1, 2019
-- Description:	Returns the tag values across many table partitions
-- =============================================
CREATE PROCEDURE dbo.GetTagValues
(
	-- Add the parameters for the stored procedure here
	@tag_id int,
	@start_t_stamp bigint, 
	@end_t_stamp bigint
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @sql varchar(MAX)
	DECLARE @insert_statement varchar(50)

	SELECT 
		@sql = COALESCE(@sql, '') + ('SELECT [tagid], [intvalue], [t_stamp] FROM [dbo].[' + a.[pname] + '] WHERE [intvalue] IS NOT NULL AND [tagid] = ' + CAST(@tag_id AS varchar) + ' AND [t_stamp] BETWEEN ' + CAST(@start_t_stamp AS varchar) + ' AND ' +  CAST(@end_t_stamp AS varchar) + ' ' + CASE WHEN a.[num] != a.[max] THEN ' UNION ' ELSE '' END)
	FROM 
		(
			SELECT 
				a.*, 
				ROW_NUMBER() OVER (ORDER BY A.[pname]) AS [num],
				COUNT(*) OVER () AS [max] 
			FROM 
			(
				SELECT 
					[pname]
				FROM [sqlth_partitions] 
				WHERE 
					@start_t_stamp BETWEEN [start_time] AND [end_time] 
				UNION 
				SELECT 
					[pname] 
				FROM [sqlth_partitions] 
				WHERE 
					@end_t_stamp BETWEEN [start_time] AND [end_time]
			) a
		) a

	--Create TempTable
	CREATE TABLE #Temp
	(
		tagid int,
		intvalue int,
		t_stamp bigint
	)

	SET @insert_statement = 'INSERT INTO #Temp '
	SET @sql = @insert_statement + @sql

	EXEC(@sql)

	-- Query #Temp table here
	SELECT * FROM #Temp

	-- Finally drop #Temp table
	IF(OBJECT_ID('tempdb..#Temp') IS NOT NULL)
	BEGIN
		DROP TABLE #Temp
	END
	END
GO

