-- List the names of all passengers who have booked more than one ticket on a specific date.

select  passenger.FirstName, passenger.LastName,
count(Bookings.BookingID) as BookingCount
from bookings join passenger
on bookings.PassengerID = passenger.PassengerID
where bookings.BookingDate = '2024-07-19'
group by passenger.FirstName, passenger.LastName
having BookingCount > 1;

