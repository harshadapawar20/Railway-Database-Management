-- List the total number of passengers travelling on each train on a specific date.

select trains.TrainName,
count(Bookings.PassengerId) as TotalPassenger
from Trains  Join schedules 
on Trains.TrainsID = Schedules.TrainsID
join bookings
on Schedules.ScheduleId = Bookings.ScheduleID
where schedules.Date = '2024-07-19'
Group by trains.TrainName;
	

    