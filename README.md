# Project-Gutenberg-DB
Library Management System SQL Project - README
This SQL script implements a complete relational database management system for a Library Management use case.

# Key Features:
Database Creation:

Creates a database named guten_librarydb.

Switches to use this database for all subsequent operations.

Tables and Relationships:

Defines three tables: Author, Book, and Loan.

Primary keys are auto-incrementing IDs.

Foreign key relationships:

Book.author_id references Author.author_id.

Loan.book_id references Book.book_id.

The Loan table records book loans by a member_name (string).

# Sample Data:

Populates the database with sample authors and books using names and titles inspired by classics.

Inserts sample loan records with member names and loan dates.

Verification and Schema Display:

Shows all databases to confirm creation.

Lists tables within the database.

Describes the structure of each table.

# Source of Data:
The dataset is a representative subset adapted from Project Gutenberg’s Top 100 eBooks, focusing on public domain classic authors and their works.

# Purpose and Usage:
This script demonstrates core database design principles:

Structured tables with primary and foreign keys

Data integrity through referential constraints

Sample data insertion reflecting real-world entities

Display and exploration of database schema
