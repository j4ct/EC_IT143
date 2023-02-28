-- Q: Which are the most played games in Steam?

-- A: Lets request the 'Name' column to the 'steam' table.


-- 1) Reload data

TRUNCATE TABLE dbo.t_steam_name;

INSERT INTO dbo.t_steam_name SELECT v.name FROM dbo.v_steam_name_load AS v;

-- 2) Review results

SELECT t.* FROM dbo.t_steam_name AS t;