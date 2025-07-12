-- Display the customers who have not make any reservation since the beginning of 2023.
-- The result should include first name, last name, email address, andcontact number.
SELECT c.first_name, c.last_name, c.email, c.contact_number
FROM Customer c
WHERE c.customer_id NOT IN (
    SELECT r.customer_id
    FROM Reservation r
    WHERE YEAR(r.booking_date) >= 2023
);

-- Display the monthly revenue for the year 2023 and sort the results in descending
-- order by monthly revenue.
SELECT (i.payment_date) AS month, SUM(i.amount) AS monthly_revenue
FROM Invoice i
WHERE YEAR(i.payment_date) = 2023
GROUP BY month
ORDER BY monthly_revenue DESC;

-- Display all customers have make more than 2 reservations in the year of 2023.

SELECT c.first_name, c.last_name, COUNT(r.reservation_id) AS total_reservations
FROM Customer c
JOIN Reservation r ON c.customer_id = r.customer_id
WHERE YEAR(r.booking_date) = 2023
GROUP BY c.customer_id
HAVING count(r.reservation_id) > 2;

-- Display the customer who have stayed more than one branch in 2023.

SELECT c.first_name, c.last_name, COUNT(DISTINCT r.branch_id) AS branches_visited
FROM Customer c
JOIN Reservation r ON c.customer_id = r.customer_id
WHERE YEAR(r.booking_date) = 2023
GROUP BY c.customer_id
HAVING COUNT(DISTINCT r.branch_id) > 1;

-- Display the customer with highest number of reservations and show their
-- average amount spent for the year 2023.

SELECT c.first_name, c.last_name, COUNT(r.reservation_id) AS total_reservations, AVG(i.amount) AS avg_spent
FROM Customer c
JOIN Reservation r ON c.customer_id = r.customer_id
JOIN Invoice i ON r.reservation_id = i.reservation_id
WHERE YEAR(r.booking_date) = 2023
GROUP BY c.customer_id
ORDER BY total_reservations DESC
LIMIT 1;

-- Display the branch id, address, manager’s name, and the total number of rooms
-- for each branch.

SELECT b.branch_id, b.address, CONCAT(m.first_name, ' ', m.last_name) AS manager_name, COUNT(rm.room_id) AS total_rooms
FROM Branch b
JOIN Manager m ON b.manager_id = m.manager_id
JOIN Room rm ON b.branch_id = rm.branch_id
GROUP BY b.branch_id;

-- Display the names of customers and the total amount they spent in the year of 2023.

SELECT c.first_name, c.last_name, SUM(i.amount) AS total_spent
FROM Customer c
JOIN Reservation r ON c.customer_id = r.customer_id
JOIN Invoice i ON r.reservation_id = i.reservation_id
WHERE YEAR(i.payment_date) = 2023
GROUP BY c.customer_id;

-- Display the average and total spending by gender for the year 2023.
SELECT c.gender, AVG(i.amount) AS avg_spent, SUM(i.amount) AS total_spent
FROM Customer c
JOIN Reservation r ON c.customer_id = r.customer_id
JOIN Invoice i ON r.reservation_id = i.reservation_id
WHERE YEAR(i.payment_date) = 2023
GROUP BY c.gender;