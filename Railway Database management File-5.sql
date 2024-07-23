-- Create a user defined function to calculate the age of a passenger.

select FirstName, DateOFBirth , CalculateAge(DateOfBirth) as age
from passenger;
