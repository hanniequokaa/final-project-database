/* Create the database */
CREATE DATABASE IF NOT EXISTS studentDB;

/* Switch to the database */
USE studentDB;

/* Drop existing tables (optional, for resetting during testing) */
DROP TABLE IF EXISTS enrollments;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS courses;

/* Create Students table */
CREATE TABLE students (
    studentID INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    dateOfBirth DATE NOT NULL CHECK (dateOfBirth <= CURDATE() - INTERVAL 16 YEAR)
);

/* Create Courses table */
CREATE TABLE courses (
    courseID INT PRIMARY KEY AUTO_INCREMENT,
    courseName VARCHAR(100) NOT NULL,
    credits INT CHECK (credits BETWEEN 1 AND 6)
);

CREATE TABLE enrollments (
    enrollmentID INT PRIMARY KEY AUTO_INCREMENT,     
    courseID INT NOT NULL,                           
    studentID INT NOT NULL,                          
    enrollmentDate DATE,
    FOREIGN KEY (studentID) REFERENCES students(studentID),
    FOREIGN KEY (courseID) REFERENCES courses(courseID)
);
