-- 01. Data quality check
SELECT *
FROM `f1-data-analytics-510015.F1_Big_Query_Data.f1_lap_times_raw`
LIMIT 20;



SELECT
  driver_name,
  lap,
  lap_time_seconds
FROM `f1-data-analytics-510015.F1_Big_Query_Data.f1_lap_times_raw`
WHERE lap_time_seconds IS NULL
   OR SAFE_CAST(lap_time_seconds AS FLOAT64) IS NULL;


-- 02. Clean data
SELECT
  driver_id,
  driver_name,
  team,
  race,
  lap,
  SAFE_CAST(REGEXP_REPLACE(lap_time_seconds, r'[^0-9.]', '') AS FLOAT64)
    AS lap_time_seconds_clean,
  position
FROM `f1-data-analytics-510015.F1_Big_Query_Data.f1_lap_times_raw`;


--New Table with clean values
create or replace table
  `f1-data-analytics-510015.F1_Big_Query_Data.f1_lap_times_clean` AS
SELECT
  driver_id,
  driver_name,
  team,
  race,
  lap,
  SAFE_CAST(REGEXP_REPLACE(lap_time_seconds, r'[^0-9.]', '') AS FLOAT64)
    AS lap_time_seconds_clean,
  position
FROM `f1-data-analytics-510015.F1_Big_Query_Data.f1_lap_times_raw`;
