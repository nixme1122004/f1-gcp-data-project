-- 05. Average lap time by lap number

SELECT
  lap,
  AVG(lap_time_seconds_clean) AS average_lap_time
FROM
  `f1-data-analytics-510015.F1_Big_Query_Data.f1_lap_times_clean`
GROUP BY
  lap
ORDER BY
  lap ASC;
