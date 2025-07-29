CREATE TABLE Author (
    AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(100),
    Country VARCHAR(50)
);


CREATE TABLE Book (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    AuthorID INT,
    FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID)
);


INSERT INTO Author (AuthorID, AuthorName, Country) VALUES
(1, 'Ayush Ranjan', 'India'),
(2, 'Haruki Murakami', 'Japan'),
(3, 'Chinua Achebe', 'Nigeria');



INSERT INTO Book (BookID, Title, AuthorID) VALUES
(101, '1984', 1),
(102, 'Kafka on the Shore', 2),
(103, 'Things Fall Apart', 3);



SELECT 
    Book.Title AS BookTitle,
    Author.AuthorName,
    Author.Country
FROM 
    Book
INNER JOIN 
    Author ON Book.AuthorID = Author.AuthorID;
