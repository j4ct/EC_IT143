-- Q: Which are the most played games in Steam?

-- A: Lets request the 'Name' column to the 'steam' table.

EXEC dbo.usp_steam_name_load;