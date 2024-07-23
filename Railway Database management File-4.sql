-- Find all passengers whose age is above a certain limit.

SELECT * ,
FLOOR(DATEDIFF(CURDATE(), DateOfBirth) / 365.25) AS age
from passenger
having age > 40;

