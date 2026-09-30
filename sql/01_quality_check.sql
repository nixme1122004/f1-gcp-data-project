-- Check for missing or non-numeric lap times

SELECT
  driver_name,
  lap,
  lap_time_seconds
FROM `f1-data-analytics-510015.F1_Big_Query_Data.f1_lap_times_raw`
WHERE lap_time_seconds IS NULL
   OR SAFE_CAST(lap_time_seconds AS FLOAT64) IS NULL;
