-- Q: Which are the most played games in Steam?

-- A: Lets request the 'Name' column to the 'steam' table.

SELECT v.Name INTO dbo.t_steam_name FROM dbo.v_steam_name AS v;