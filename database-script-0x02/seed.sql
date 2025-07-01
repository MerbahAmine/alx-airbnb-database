INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
('11111111-1111-1111-1111-111111111111', 'Alice', 'Walker', 'alice@example.com', 'hashed_pw_1', '1234567890', 'guest', CURRENT_TIMESTAMP),
('22222222-2222-2222-2222-222222222222', 'Bob', 'Smith', 'bob@example.com', 'hashed_pw_2', '0987654321', 'host', CURRENT_TIMESTAMP),
('33333333-3333-3333-3333-333333333333', 'Carol', 'Johnson', 'carol@example.com', 'hashed_pw_3', '1112223333', 'admin', CURRENT_TIMESTAMP);
INSERT INTO Property (property_id, host_id, name, description, location, price_per_night, created_at, updated_at) VALUES
('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Cozy Cottage', 'A quiet getaway in the woods.', 'Portland, OR', 120.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Downtown Loft', 'Modern loft in city center.', 'New York, NY', 200.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
('bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2025-08-01', '2025-08-05', 480.00, 'confirmed', CURRENT_TIMESTAMP),
('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2025-09-10', '2025-09-12', 400.00, 'pending', CURRENT_TIMESTAMP);
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method) VALUES
('ppppppp1-pppp-pppp-pppp-pppppppppppp', 'bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 480.00, '2025-07-01', 'credit_card');
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at) VALUES
('rrrrrrr1-rrrr-rrrr-rrrr-rrrrrrrrrrrr', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 5, 'Fantastic place to stay. Very clean and quiet.', CURRENT_TIMESTAMP),
('rrrrrrr2-rrrr-rrrr-rrrr-rrrrrrrrrrrr', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 4, 'Great l', CURRENT_TIMESTAMP);
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
('mmmmmmm1-mmmm-mmmm-mmmm-mmmmmmmmmmmm', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hi, is the cottage available in August?', CURRENT_TIMESTAMP),
('mmmmmmm2-mmmm-mmmm-mmmm-mmmmmmmmmmmm', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Yes', CURRENT_TIMESTAMP);

