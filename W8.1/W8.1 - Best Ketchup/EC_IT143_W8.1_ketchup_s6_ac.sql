-- Q: What are the ketchup choices?

-- A: Lets request the column to the Ketchup table.


-- 1) Reload data

TRUNCATE TABLE dbo.t_Ketchup_choice;

INSERT INTO dbo.t_Ketchup_choice SELECT v.ketchup_choice FROM dbo.v_Ketchup_choice_load AS v;

-- 2) Review results

SELECT t.* FROM dbo.t_Ketchup_choice AS t;