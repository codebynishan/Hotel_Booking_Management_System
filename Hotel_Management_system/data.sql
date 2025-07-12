INSERT INTO Manager (manager_id, first_name, last_name, contact_number, email) VALUES
(111, 'Janet', 'Shepard', '0643714', 'mark53@gmail.com'),
(112, 'Helen', 'Macdonald', '90979313', 'jessicakane@gmail.com'),
(113, 'Janice', 'Andrade', '3290278443', 'michaelrodriguez@yahoo.com'),
(114, 'Keith', 'Stark', '75317633402', 'laura98@jones.org');

SELECT * FROM Manager;

INSERT INTO Branch (branch_id, address, manager_id) VALUES
(1, '6820 Collins Club, Robertoville, MA 72379', 111),
(2, '228 Osborne Station, Gardnerchester, IN 13723', 112),
(3, '308 Melissa Coves, Donaldmouth, VT 71205', 113),
(4, '09094 Alexander Extension Apt. 647, Waretown, NJ', 114);

SELECT * FROM Branch;

INSERT INTO Room (room_id, branch_id, room_type, capacity, rate) VALUES
(201, 4, 'deluxe double', 2, 175.51),
(202, 3, 'standard twin', 3, 157.07),
(203, 2, 'deluxe double', 2, 187.45),
(204, 3, 'standard double', 3, 123.43),
(205, 1, 'deluxe double', 3, 103.45),
(206, 4, 'deluxe double', 3, 160.68),
(207, 3, 'standard double', 2, 147.16),
(208, 2, 'deluxe double', 3, 101.86),
(209, 1, 'standard double', 2, 195.58),
(210, 4, 'deluxe double', 2, 190.33);

SELECT * FROM Room;

INSERT INTO Customer (customer_id, first_name, last_name, email, contact_number, mailing_address, gender) VALUES
(11, 'Lori', 'Gutierrez', 'user1@example.com', '487287569', '21795 Jacqueline Gardens Suite 616, Lake Troymouth', 'Female'),
(12, 'Diane', 'Harris', 'user2@example.com', '26363636', '215 Nicole Shoal Apt. 401, Annamouth, AZ 19811', 'Female'),
(13, 'Caleb', 'Jacobs', 'user3@example.com', '36363636', '91102 Brian Trail, Williamsville, DC 20271', 'Male'),
(14, 'Edgar', 'Lane', 'user4@example.com', '363463', 'USCGC Ford, FPO AP 93618', 'Male'),
(15, 'Michael', 'Walsh', 'user5@example.com', '3636346346', '69759 Duffy Highway, Conwaystad, WI 89689', 'Male'),
(16, 'Mark', 'Ho', 'user6@example.com', '36363636663', '98392 Melissa Lake Apt. 343, Costafurt, WV 22857', 'Male'),
(17, 'Pamela', 'King', 'user7@example.com', '144-054-6457', '35737 Jose Cliff, Lake Jennifer, ID 18292', 'Female'),
(18, 'Sarah', 'Hunter', 'user8@example.com', '3636363636', '68740 Martin Parkways Suite 503, East Benjamin', 'Female'),
(19, 'Jason', 'Stephens', 'user9@example.com', '3366767674', '053 Danny Tunnel, New Kimberly, ND 31395', 'Female'),
(20, 'Jennifer', 'Cunningham', 'user10@example.com', '363634636', '26235 Brittany Summit, Lake Rebeccaberg, NH 37822', 'Male');

SELECT * FROM Customer;

INSERT INTO Reservation (reservation_id, customer_id, branch_id, booking_date, check_in, check_out, emergency_contact, special_request, preference) VALUES
(1, 11, 4, '2023-01-05', '2023-01-12', '2023-01-23', '3499419118', NULL, 'Sea view'),
(2, 12, 3, '2023-06-03', '2023-08-19', '2023-08-25', '2887928982', NULL, 'High floor'),
(3, 13, 4, '2023-06-20', '2023-07-05', '2023-07-10', '4158145371', 'Extra pillow', 'Sea view'),
(4, 14, 2, '2023-08-01', '2023-08-24', '2023-08-30', '0014949476', 'Extra pillow', 'Non-smoking'),
(5, 15, 1, '2023-04-20', '2023-06-25', '2023-06-30', '0044962803', 'Extra pillow', 'Sea view'),
(6, 16, 3, '2023-03-15', '2023-04-01', '2023-04-05', '1379211237', NULL, 'Non-smoking'),
(7, 17, 1, '2023-11-15', '2023-11-22', '2023-11-28', '8264748027', NULL, 'Non-smoking'),
(8, 18, 4, '2023-02-28', '2023-03-03', '2023-03-08', '5283404944', NULL, 'Non-smoking'),
(9, 17, 3, '2023-01-20', '2023-02-06', '2023-02-12', '0535291374', 'Extra pillow', 'Sea view'),
(10, 20, 2, '2023-10-01', '2023-11-12', '2023-11-16', '001534592', 'Extra pillow', 'Sea view');


SELECT * FROM Reservation;

INSERT INTO Reservation_Room (reservation_id, room_id) VALUES
(1, 201),
(2, 202),
(3, 203),
(4, 210),
(5, 204),
(6, 207),
(7, 209),
(8, 209),
(9, 202),
(10, 206);

SELECT * FROM Reservation_Room;

INSERT INTO Invoice (invoice_id, reservation_id, amount, payment_date) VALUES
(301, 1, 561.20, '2023-02-19'),
(302, 2, 709.08, '2023-06-03'),
(303, 3, 605.76, '2023-12-14'),
(304, 4, 695.89, '2023-08-23'),
(305, 5, 226.00, '2023-05-01'),
(306, 6, 678.86, '2023-06-01'),
(307, 7, 311.67, '2023-12-15'),
(308, 8, 713.19, '2023-06-21'),
(309, 9, 216.93, '2023-03-01'),
(310, 10, 357.18, '2023-10-16');

SELECT * FROM Invoice;

INSERT INTO Review (review_id, customer_id, reservation_id, rating, review_text) VALUES
(1, 11, 1, 2, 'True common enough term.'),
(2, 12, 2, 5, 'Person brother debate today spend last cultural effort.'),
(3, 16, 3, 3, 'Natural film onto process already member five agreement.'),
(4, 16, 4, 2, 'Fund opportunity read particular week establish.'),
(5, 15, 5, 3, 'Environment give understand firm over far profile.'),
(6, 16, 6, 2, 'Work new best win PM adult effect people spring.'),
(7, 19, 7, 5, 'Help house mission simple help girl.'),
(8, 13, 8, 1, 'Child section serious leader exist.'),
(9, 20, 9, 4, 'Parent note change strong sometimes yes nor control.'),
(10, 17, 10, 5, 'Together everything blue each movement area part.');

SELECT * FROM Review;