CREATE DATABASE LibraryDB;
GO
USE LibraryDB;
GO

-- Authors Table
CREATE TABLE Authors (
    AuthorID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    BirthDate DATE
);

-- Books Table
CREATE TABLE Books (
    BookID INT IDENTITY(1,1) PRIMARY KEY,
    Title NVARCHAR(200) NOT NULL,
    AuthorID INT FOREIGN KEY REFERENCES Authors(AuthorID),
    PublishedYear INT
);

-- Borrowers Table
CREATE TABLE Borrowers (
    BorrowerID INT IDENTITY(1,1) PRIMARY KEY,
    FullName NVARCHAR(100) NOT NULL,
    BorrowDate DATE,
    BookID INT FOREIGN KEY REFERENCES Books(BookID)
);
