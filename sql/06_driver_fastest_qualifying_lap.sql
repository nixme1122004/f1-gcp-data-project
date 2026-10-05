-- Find each driver's fastest qualifying lap

SELECT
  driver_code,
  MIN(lap_time_seconds) AS fastest_lap_seconds
FROM `f1-data-analytics-510015.F1_Qualifying_Data.qualifying_raw`
WHERE lap_time_seconds IS NOT NULL
GROUP BY driver_code
ORDER BY fastest_lap_seconds ASC;
