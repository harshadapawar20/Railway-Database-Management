-- Find the Train with the highest number of bookings on a specific date.

select Trains.TrainsID, Trains.trainName , 
count(Bookings.BookingID) as TotalBookings
from Bookings join Schedules 
on Bookings.ScheduleID = Schedules.ScheduleID
join Trains On Schedules.ScheduleID = Trains.TrainsID
where Schedules.Date = '2024-07-19'
Group By Trains.TrainsId
order by Trains.TrainsID;
