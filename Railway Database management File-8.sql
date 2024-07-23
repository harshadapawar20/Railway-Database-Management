-- List all trains and their availability along with the number of booked seats.

select Trains.TrainName , Trains.TotalSeats, 
count(Bookings.BookingID) AS BookedSeats
From Trains left join schedules 
on Trains.TrainsID = Schedules.TrainsID
left join Bookings 
on Schedules.ScheduleID = Bookings.ScheduleID
Group BY Trains.TrainName,
Trains.TotalSeats;