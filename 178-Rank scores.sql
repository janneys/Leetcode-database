SELECT Scores, dense_rank() over (order by Scores desc) as "Rank"
FROM Scores

-- difference between dense_rank() and rank()   windows function
-- over (partition by... order by...)