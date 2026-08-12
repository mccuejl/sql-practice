-- Problem: Unfinished Parts (Easy)
-- https://datalemur.com/questions/tesla-unfinished-parts
-- Got it! This one truly did feel easy
-- I do think the solution on DataLemur is missing a piece of
--  the query that I added to my solution. The question specifically
--  says "contains all parts currently in production". The Data Lemur
--  solution does not query for a NULL asssembly step and only queries
--  finish date.

SELECT part, assembly_step
FROM parts_assembly
WHERE assembly_step >= 1 AND finish_date IS NULL;