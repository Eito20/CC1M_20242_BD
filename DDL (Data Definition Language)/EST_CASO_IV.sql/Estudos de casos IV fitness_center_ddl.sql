-- Create schema
CREATE SCHEMA fitness_center;
USE fitness_center;

-- Create tables
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE,
    birth_date DATE,
    address VARCHAR(255),
    phone VARCHAR(20)
);

CREATE TABLE instructors (
    instructor_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(50)
);

CREATE TABLE modalities (
    modality_id INT PRIMARY KEY,
    modality_name VARCHAR(50) NOT NULL,
    description TEXT
);

CREATE TABLE training_plans (
    plan_id INT PRIMARY KEY,
    student_id INT,
    instructor_id INT,
    start_date DATE,
    end_date DATE,
    plan_details TEXT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (instructor_id) REFERENCES instructors(instructor_id)
);

CREATE TABLE classes (
    class_id INT PRIMARY KEY,
    modality_id INT,
    instructor_id INT,
    schedule DATETIME,
    capacity INT,
    FOREIGN KEY (modality_id) REFERENCES modalities(modality_id),
    FOREIGN KEY (instructor_id) REFERENCES instructors(instructor_id)
);

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    modality_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (modality_id) REFERENCES modalities(modality_id)
);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    student_id INT,
    amount DECIMAL(10, 2),
    payment_date DATE,
    status ENUM('paid', 'pending'),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

-- Example ALTER statements
ALTER TABLE students ADD COLUMN email VARCHAR(100);
ALTER TABLE instructors ADD COLUMN hire_date DATE;
ALTER TABLE modalities ADD COLUMN difficulty_level ENUM('beginner', 'intermediate', 'advanced');
ALTER TABLE training_plans ADD COLUMN plan_type VARCHAR(50);
ALTER TABLE classes ADD COLUMN room VARCHAR(50);
ALTER TABLE enrollments ADD COLUMN status ENUM('active', 'inactive', 'suspended');
ALTER TABLE payments ADD COLUMN payment_method VARCHAR(50);

-- Drop schema
DROP SCHEMA fitness_center;