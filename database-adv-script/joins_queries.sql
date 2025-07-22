SELECT Booking.start_date Booking.end_date User.first_name  User.last_name User.email  User.phone_number
FROM Booking 
INNER JOIN User 
ON Booking. booking_id = User.user_id;

SELECT * 
FROM Property
LEFT JOIN Reviews
On Property.property_id = Review.review_id;


SELECT * 
FROM User
FULL OUTER JOIN Booking
  On Booking. booking_id = User.user_id;

