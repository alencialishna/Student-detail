CREATE DATABASE Student_detail;

USE Student_detail;


CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    enrollment_no VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(15),
    year_of_study INT,
    semester INT,
);

CREATE TABLE Courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_code VARCHAR(20) UNIQUE NOT NULL,
    course_name VARCHAR(100) NOT NULL,
    credits INT NOT NULL
);


CREATE TABLE Enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    grade VARCHAR(2),

    FOREIGN KEY (student_id)
        REFERENCES Students(student_id),

    FOREIGN KEY (course_id)
        REFERENCES Courses(course_id)
);


INSERT INTO Students
(student_name, enrollment_no, email, phone, year_of_study, semester)
VALUES
('Alice Johnson', 'AI2026001', 'alice@example.com', '9876543210', 1, 1),
('Bob Kumar', 'AI2026002', 'bob@example.com', '9876543211', 2, 3);


INSERT INTO Courses
(course_code, course_name, credits)
VALUES
('AI101', 'Introduction to AI', 4),
('ML201', 'Machine Learning Basics', 3),
('DS301', 'Data Science Fundamentals', 4);

-- Insert Sample Enrollments
INSERT INTO Enrollments
(student_id, course_id, grade)
VALUES
(1, 1, 'A'),
(1, 2, 'B+'),
(2, 3, 'A');