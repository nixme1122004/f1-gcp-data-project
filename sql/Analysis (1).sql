select 
       driver_id, 
       driver_name,
       avg(lap_time_seconds_clean) as average_lap_time
from `f1-data-analytics-510015.F1_Big_Query_Data.f1_lap_times_clean`
group by driver_id, driver_name
order by average_lap_time asc;

select  
  team,
  avg(lap_time_seconds_clean) as avg_team_lap_time
from `f1-data-analytics-510015.F1_Big_Query_Data.f1_lap_times_clean`
group by team
order by avg_team_lap_time;


SELECT
  lap,
  AVG(lap_time_seconds) AS average_lap_time
FROM
  `f1-data-analytics-510015.F1_Big_Query_Data.f1_lap_times_clean`
GROUP BY
  lap
ORDER BY
  lap;