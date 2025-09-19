In this project, I designed and implemented a Student Course Enrollment System using MySQL.
The database schema consists of three well-structured tables: students, courses, and enrollments.

The students table stores student details, with studentID as the PRIMARY KEY and
a UNIQUE constraint on the email column to prevent duplicate accounts.

The courses table stores course information, with courseID as the PRIMARY KEY 
and a CHECK constraint to ensure credits values are between 1 and 6.

The enrollments table links students to the courses they are enrolled in,
using studentID and courseID as FOREIGN KEYS that reference the students and 
courses tables respectively. It also has its own enrollmentID as a PRIMARY KEY.

This design enforces referential integrity and models a many-to-many relationship 
between students and courses through the enrollments table. Additionally, 
NOT NULL constraints are used on essential fields like names, emails, 
and course names to ensure data completeness.

Overall, this schema fully meets the assignment requirements:
it includes a real-world use case, a relational database design with
properly defined tables, constraints, and relationships, 
implemented using SQL in a single .sql file.
