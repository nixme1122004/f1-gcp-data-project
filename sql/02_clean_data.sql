-- 02. Clean F1 lap-time data
--
-- Purpose:
-- Convert lap_time_seconds from STRING to FLOAT64.
-- This also handles values such as "78 seconds".
-- Missing or unusable values become NULL.
--
-- The raw table is not modified.

CREATE OR REPLACE TABLE
  `f1-data-analytics-510015.F1_Big_Query_Data.f1_lap_times_clean` AS

SELECT
  driver_id,
  driver_name,
  team,
  race,
  lap,

  SAFE_CAST(
    REGEXP_REPLACE(lap_time_seconds, r'[^0-9.]', '')
    AS FLOAT64
  ) AS lap_time_seconds_clean,

  position

FROM
  `f1-data-analytics-510015.F1_Big_Query_Data.f1_lap_times_raw`;  
