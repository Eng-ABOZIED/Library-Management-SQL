-- Insert Authors
INSERT INTO Authors (Name, BirthDate) VALUES
(N'George Orwell', '1903-06-25'),
(N'Jane Austen', '1775-12-16'),
(N'J.K. Rowling', '1965-07-31');

-- Insert Books
INSERT INTO Books (Title, AuthorID, PublishedYear) VALUES
(N'1984', 1, 1949),
(N'Pride and Prejudice', 2, 1813),
(N'Harry Potter and the Sorcerer''s Stone', 3, 1997);

-- Insert Borrowers
INSERT INTO Borrowers (FullName, BorrowDate, BookID) VALUES
(N'Ali Mohamed', '2024-01-15', 1),
(N'Sara Ahmed', '2024-02-05', 2),
(N'Mona Tarek', '2024-03-10', 3);
