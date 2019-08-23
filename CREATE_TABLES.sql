DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS reviews;


--========================================================================================

--CREATE TABLES

CREATE TABLE books (
	book_id bigint PRIMARY KEY,
	title varchar(1000) NOT NULL,
	authors varchar(1000) NOT NULL
);


CREATE TABLE reviews (
	reviews_id INT PRIMARY KEY,
	"rank" INT NOT NULL,
	weeks_on_list INT NOT NULL,
	book_id BIGINT references books(book_id),
	publisher VARCHAR(255),
	book_review_link VARCHAR(1000),
	category VARCHAR(255) NOT NULL,
	current_as_of_date TIMESTAMP NOT NULL
  );




