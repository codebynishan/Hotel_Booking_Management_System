
CREATE DATABASE IF NOT EXISTS Hoteldb;
USE Hoteldb;

CREATE TABLE Manager (
    manager_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    contact_number VARCHAR(20),
    email VARCHAR(100) UNIQUE
);

CREATE TABLE Branch (
    branch_id INT PRIMARY KEY,
    address VARCHAR(255),
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES Manager(manager_id)
);

CREATE TABLE Room (
    room_id INT PRIMARY KEY,
    branch_id INT,
    room_type VARCHAR(50),
    capacity INT,
    rate DECIMAL(10,2),
    FOREIGN KEY (branch_id) REFERENCES Branch(branch_id)
);

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    contact_number VARCHAR(20),
    mailing_address VARCHAR(255),
    gender VARCHAR(10)
);

CREATE TABLE Reservation (
    reservation_id INT PRIMARY KEY,
    customer_id INT,
    branch_id INT,
    booking_date DATE,
    check_in DATE,
    check_out DATE,
    emergency_contact VARCHAR(50),
    special_request TEXT ,
    preference VARCHAR(100),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (branch_id) REFERENCES Branch(branch_id)
);

CREATE TABLE Reservation_Room (
    reservation_id INT,
    room_id INT,
    PRIMARY KEY (reservation_id, room_id),
    FOREIGN KEY (reservation_id) REFERENCES Reservation(reservation_id),
    FOREIGN KEY (room_id) REFERENCES Room(room_id)
);

CREATE TABLE Invoice (
    invoice_id INT PRIMARY KEY,
    reservation_id INT,
    amount DECIMAL(10,2),
    payment_date DATE,
    FOREIGN KEY (reservation_id) REFERENCES Reservation(reservation_id)
);

CREATE TABLE Review (
    review_id INT PRIMARY KEY,
    customer_id INT,
    reservation_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    review_text TEXT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (reservation_id) REFERENCES Reservation(reservation_id)
);