
SELECT Booking.start_date Booking.end_date User.first_name  User.last_name User.email  User.phone_number
FROM Booking 
INNER JOIN User 
ON Booking. booking_id = User.user_id;
