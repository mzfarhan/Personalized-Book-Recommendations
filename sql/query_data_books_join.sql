WITH
  JoinedBooksData AS (
    SELECT
      users.userid,
      users.age,
      users.country,
      ratings.isbn,
      ratings.bookrating,
      books.booktitle,
      books.bookauthor,
      books.yearofpublication,
      books.publisher
    FROM
      `gen-lang-client-0805166703`.books_dataset.users AS users
      LEFT JOIN
      `gen-lang-client-0805166703`.books_dataset.ratings AS ratings
      ON users.userid = ratings.userid
      LEFT JOIN
      `gen-lang-client-0805166703`.books_dataset.books AS books
      ON ratings.isbn = books.isbn
    WHERE
      books.yearofpublication BETWEEN 1900 AND 2025
  )
SELECT
  *
FROM
  JoinedBooksData;
