-- Find the station with the maximum number of departures on a specific date.


SELECT 
Trains.SourceStation, count(*) as Departures
from schedules join trains
on trains.trainsID = schedules.TrainsID
where schedules.Date = '2024-07-19'
group by Trains.SourceStation
order by Departures desc limit 1 ;




