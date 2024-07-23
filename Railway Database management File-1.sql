-- Add a new train to the Trains Table.
insert into trains (TrainID, TrainName, SourceStation, DestinationStation, TotalSeats) 
values (12139, 'Sewagram Express', 'CSMT' , 'Nagpur Junction',1000); 

-- Add a new station to the Stations Table.
insert into stations (StationId, StationName, Location) 
values (21 , 'CSMT' , 'Mumbai');

-- Create new schedule for a train.
insert into schedules (ScheduleId, TrainsID, DepartureTime, ArrivalTime, Date)
values (111,  17617, '21:30:00', '15:45:00', '2024-07-19');

-- Add a new passenger to Passengers Table.
insert into passenger (PassengerID, FirstName, LastName, DateOfBirth, Gender)
values (31, 'Tony' , 'Watson', '2002-04-20', 'M');

-- Book a ticket for a passenger on a specific train schedule.
insert into Bookings (BookingID, PassengerID, ScheduleID, SeatNumber, BookingDate)
values (11, 2, 106, 'K15' , '2024-07-01');

-- List all trains departing from a specific train shcedule.
select * from trains
where SourceStation = 'CSMT';

select * from trains
where SourceStation = 'Mumbai LTT';

-- List all passengers booked on a specific train schedule.
select passenger.PassengerID, passenger.FirstName, passenger.LastName, bookings.BookingID, bookings.ScheduleId
from passenger join bookings
on passenger.PassengerID = bookings.PassengerID
where bookings.ScheduleId = 103;

-- Update the schedule of a train.
update schedules 
set DepartureTime = '15:00:00' 
where scheduleID = 105;
