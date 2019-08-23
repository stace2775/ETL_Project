--DROP TABLE IF EXISTS events;
--DROP TABLE IF EXISTS reviews;
--DROP TABLE IF EXISTS books;

-- Books Table
CREATE TABLE books (
	book_id bigint PRIMARY KEY,
	title varchar(1000) NOT NULL,
	authors varchar(1000) NOT NULL
);


-- Events Table
CREATE TABLE events (
	event_id int PRIMARY KEY NOT NULL,
	event_source varchar(500),
	event_isbn bigint references books(book_id),
	event_participants varchar(500),
	event_date varchar(25),
	event_location varchar(500),
	event_city varchar(100),
	event_state varchar(100),
	event_description varchar(1000),
	event_market varchar(100)

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