CREATE PROCEDURE dbo.usp_steam_name_load
AS

/***************************************************************************************************
NAME:    dbo.v_steam_name_load
PURPOSE: Create the Steam most played games names - Load View
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

	TRUNCATE TABLE dbo.t_steam_name;

	INSERT INTO dbo.t_steam_name SELECT v.name FROM dbo.v_steam_name_load AS v;

	-- 2) Review results

	SELECT t.* FROM dbo.t_steam_name AS t;
END;

GO