# 📚 Library Database - MySQL Project

This project is a basic implementation of a Library Management Database using MySQL. It includes a single table named `library` that stores information about books including title, author, genre, publication year, and number of copies.

---

## ✅ Features

- Auto-incrementing Book ID
- Stores book details: Title, Author, Genre, Year, Copies
- Simple insertion and selection of records

---

## 🗄️ Table Structure

Database Name: `library`  
Table Name: `library`

| Field   | Type         | Description                          |
|---------|--------------|--------------------------------------|
| BookID  | INT          | Primary Key, Auto-Increment          |
| Title   | VARCHAR(100) | Title of the Book                    |
| Author  | VARCHAR(100) | Author's Name                        |
| Genre   | VARCHAR(50)  | Book Genre                           |
| Year    | INT          | Year of Publication                  |
| Copies  | INT          | Number of Available Copies           |

---

## 🛠️ Setup Instructions

1. **Create the database and table:**

```sql
CREATE DATABASE library;

USE library;

CREATE TABLE library (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Year INT,
    Copies INT
);
