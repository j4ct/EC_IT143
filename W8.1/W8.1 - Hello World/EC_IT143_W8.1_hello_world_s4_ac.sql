DROP VIEW IF EXISTS dbo.v_hello_world_load;
GO

CREATE VIEW dbo.v_hello_world_load
AS

/***************************************************************************************************
NAME:    dbo.v_hello_world_load
PURPOSE: Create the Hello World - Load View
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

SELECT 'Hello World' AS my_message , GETDATE() AS current_date_time;