-- 03. Average lap time by driver

SELECT
  driver_id,
  driver_name,
  AVG(lap_time_seconds_clean) AS average_lap_time
FROM
  `f1-data-analytics-510015.F1_Big_Query_Data.f1_lap_times_clean`
GROUP BY
  driver_id,
  driver_name
ORDER BY
  average_lap_time ASC;
