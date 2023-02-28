-- Q: What are the ketchup choices?

-- A: Lets request the column to the Ketchup table.

SELECT v.Ketchup_choice INTO dbo.t_Ketchup_choice FROM dbo.v_Ketchup_choice_load AS v;