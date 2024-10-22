-- Create schema
CREATE SCHEMA flyhigh;
USE flyhigh;

-- Create tables
CREATE TABLE passengers (
    passenger_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE,
    phone VARCHAR(20),
    address VARCHAR(255)
);

CREATE TABLE airports (
    airport_code CHAR(3) PRIMARY KEY,
    airport_name VARCHAR(100) NOT NULL,
    city VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE aircraft (
    aircraft_id INT PRIMARY KEY,
    model VARCHAR(50) NOT NULL,
    capacity INT
);

CREATE TABLE flights (
    flight_id INT PRIMARY KEY,
    flight_code VARCHAR(10) UNIQUE,
    origin_airport CHAR(3),
    destination_airport CHAR(3),
    departure_time DATETIME,
    arrival_time DATETIME,
    aircraft_id INT,
    FOREIGN KEY (origin_airport) REFERENCES airports(airport_code),
    FOREIGN KEY (destination_airport) REFERENCES airports(airport_code),
    FOREIGN KEY (aircraft_id) REFERENCES aircraft(aircraft_id)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(50),
    hire_date DATE
);

CREATE TABLE reservations (
    reservation_id INT PRIMARY KEY,
    passenger_id INT,
    flight_id INT,
    reservation_date DATE,
    seat_number VARCHAR(10),
    FOREIGN KEY (passenger_id) REFERENCES passengers(passenger_id),
    FOREIGN KEY (flight_id) REFERENCES flights(flight_id)
);

-- Example ALTER statements
ALTER TABLE passengers ADD COLUMN email VARCHAR(100);
ALTER TABLE airports ADD COLUMN timezone VARCHAR(50);
ALTER TABLE aircraft ADD COLUMN last_maintenance_date DATE;
ALTER TABLE flights ADD COLUMN status ENUM('scheduled', 'delayed', 'cancelled', 'completed');
ALTER TABLE employees ADD COLUMN department VARCHAR(50);
ALTER TABLE reservations ADD COLUMN check_in_status BOOLEAN DEFAULT FALSE;

-- Drop schema
DROP SCHEMA flyhigh;