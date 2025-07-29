-- find top 5 batsman who make highest run in ipl history.

-- SELECT batter, sum(batsman_run) as "runs" FROM cricket.ipl
-- GROUP BY batter
-- ORDER BY  runs DESC LIMIT 5;

-- find 2nd highest 6 hitter in ipl history

SELECT batter, count(*) as "num_sixes" FROM cricket.ipl
WHERE batsman_run = 6
GROUP BY batter
ORDER BY num_sixes DESC LIMIT 1, 1
