-- List all books with their authors .
SELECT
    B.Title,
    A.Name AS Author,
    B.PublishedYear
FROM Books B
JOIN Authors A ON B.AuthorID = A.AuthorID;


--List borrowers and their borrowed books.
SELECT
    BR.FullName,
    B.Title,
    BR.BorrowDate
FROM Borrowers BR
JOIN Books B ON BR.BookID = B.BookID;


--Count number of books per author.
SELECT
    A.Name,
    COUNT(B.BookID) AS BookCount
FROM Authors A
LEFT JOIN Books B ON A.AuthorID = B.AuthorID
GROUP BY A.Name;


--List all books published after 1900
SELECT
    Title,
    PublishedYear
FROM Books
WHERE PublishedYear > 1900;
