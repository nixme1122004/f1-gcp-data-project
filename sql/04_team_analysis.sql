-- 04. Average lap time by team

SELECT
  team,
  AVG(lap_time_seconds_clean) AS average_team_lap_time
FROM
  `f1-data-analytics-510015.F1_Big_Query_Data.f1_lap_times_clean`
GROUP BY
  team
ORDER BY
  average_team_lap_time ASC;
