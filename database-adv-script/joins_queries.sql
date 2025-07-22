##INNER JOIN 
SELECT Booking.start_date Booking.end_date User.first_name  User.last_name User.email  User.phone_number
FROM Booking 
INNER JOIN User 
ON Booking. booking_id = User.user_id;

##LEFT JOIN
SELECT *  
FROM Property
LEFT JOIN Reviews
ON Property.property_id = Reviews.property_id
ORDER BY Property.property_id;

##FULL OUTER JOIN
SELECT * 
FROM User
FULL OUTER JOIN Booking
  On Booking. booking_id = User.user_id;

