CREATE PROCEDURE dbo.usp_Ketchup_choice_load
AS

/***************************************************************************************************
NAME:    dbo.v_Ketchup_choices_load
PURPOSE: Create the Ketchup choices - Load View
MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   
-------------------------------------------------------------------------------
1.0     02/27/2023   Alonzo        1. Built this script for IT 143

RUNTIME:
1s

NOTES: 
This exists to help me learn step 4 of 8 in the Answer Focused Aproach for T-SQL Data Manipulation
 
****************************************************************************************************/

BEGIN
	-- 1) Reload data

	TRUNCATE TABLE dbo.t_Ketchup_choice;

	INSERT INTO dbo.t_Ketchup_choice SELECT v.ketchup_choice FROM dbo.v_Ketchup_choice_load AS v;

	-- 2) Review results

	SELECT t.* FROM dbo.t_Ketchup_choice AS t;
END;

GO