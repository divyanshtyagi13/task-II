CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY,
    Name VARCHAR(100),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);
-- CRUD Operations and Business Logic
-- Create
INSERT INTO Students (StudentID, Name, DepartmentID)
VALUES (1, 'John Doe', 1);

-- Read
SELECT * FROM Students WHERE StudentID = 1;

-- Update
UPDATE Students SET Name = 'Jane Smith' WHERE StudentID = 1;

-- Delete
DELETE FROM Students WHERE StudentID = 1;
--Some data entry and retreival operations
INSERT INTO Students (StudentID, Name, DepartmentID)
VALUES (1, 'John Doe', 1);
INSERT INTO Faculty (FacultyID, Name, DepartmentID)
VALUES (1, 'Dr. Jane Smith', 1);
INSERT INTO Courses (CourseID, CourseName, DepartmentID)
VALUES (1, 'Introduction to Computer Science', 1);
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES (1, 'Computer Science');
SELECT * FROM Students WHERE DepartmentID = 1;
SELECT * FROM Courses WHERE DepartmentID = 1;
SELECT * FROM Faculty WHERE DepartmentID = 1;


