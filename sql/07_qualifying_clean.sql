CREATE OR REPLACE TABLE
  `f1-data-analytics-510015.F1_Qualifying_Data.qualifying_clean` AS

SELECT DISTINCT
  driver_code,
  race,
  session,
  lap,
  lap_time_seconds,
  position,
  sector_1_seconds,
  sector_2_seconds,
  sector_3_seconds,
  tire_compound,
  stint,
  pitstop,
  tire_life,
  track_status,
  personal_best
FROM
  `f1-data-analytics-510015.F1_Qualifying_Data.qualifying_raw`
WHERE
  lap_time_seconds IS NOT NULL;
