-- Create database
SHOW DATABASES;
CREATE DATABASE IF NOT EXISTS guten_librarydb;
USE guten_librarydb;

-- Tables
CREATE TABLE Author (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE Book (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES Author(author_id)
);

CREATE TABLE Loan (
    loan_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    member_name VARCHAR(100),
    loan_date DATE,
    FOREIGN KEY (book_id) REFERENCES Book(book_id)
);

-- Data
INSERT INTO Author(name) VALUES
('Jane Austen'),
('Mark Twain'),
('Charles Dickens'),
('Leo Tolstoy'),
('Homer'),
('Fyodor Dostoevsky'),
('Mary Shelley'),
('Herman Melville'),
('George Orwell'),
('J.K. Rowling');

INSERT INTO Book(title, author_id) VALUES
('Pride and Prejudice', 1),
('Adventures of Huckleberry Finn', 2),
('Great Expectations', 3),
('War and Peace', 4),
('The Odyssey', 5),
('Crime and Punishment', 6),
('Frankenstein', 7),
('Moby-Dick', 8),
('1984', 9),
('Harry Potter and the Philosopher''s Stone', 10);

INSERT INTO Loan(book_id, member_name, loan_date) VALUES
(1, 'Alice Johnson', '2023-05-01'),
(2, 'Bob Smith', '2023-05-10'),
(5, 'Clara Evans', '2023-05-20'),
(9, 'David Wright', '2023-06-01');

USE guten_librarydb;
SHOW TABLES;
DESCRIBE Author;
DESCRIBE Book;
DESCRIBE Loan;

-- Source of data:
-- Subset adapted from Project Gutenberg Top 100 eBooks (public domain classics).
