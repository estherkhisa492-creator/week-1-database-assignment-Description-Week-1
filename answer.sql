-- =====================================
-- WEEK 1 DATABASE ASSIGNMENT
-- Topic: Library Management System
-- =====================================

-- 1. Create the database
CREATE DATABASE library_management;

-- 2. Select the database
USE library_management;

-- 3. Create Books table
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    available_copies INT DEFAULT 1
);

-- 4. Create Members table
CREATE TABLE Members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20)
);

-- 5. Create Borrowings table
CREATE TABLE Borrowings (
    borrowing_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    member_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);

-- 6. Insert books
INSERT INTO Books (title, author, category, available_copies)
VALUES
('Things Fall Apart', 'Chinua Achebe', 'Fiction', 5),
('Atomic Habits', 'James Clear', 'Self Help', 3),
('The River Between', 'Ngugi wa Thiong''o', 'Fiction', 4);

-- 7. Insert members
INSERT INTO Members (full_name, email, phone)
VALUES
('John Kamau', 'john@example.com', '0712345678'),
('Mary Wanjiku', 'mary@example.com', '0723456789');

-- 8. Insert borrowing records
INSERT INTO Borrowings (book_id, member_id, borrow_date, return_date)
VALUES
(1, 1, '2026-11-18', '2026-11-25'),
(2, 2, '2026-11-18', '2026-11-28');

-- 9. Display all books
SELECT * FROM Books;

-- 10. Display all members
SELECT * FROM Members;

-- 11. Display all borrowing records
SELECT * FROM Borrowings;
