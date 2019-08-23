-- Books Table
CREATE TABLE books (
	book_id bigint PRIMARY KEY,
	title varchar(1000),
	authors varchar(1000)
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
	event_description varchar(1000)
	event_market varchar(100)

)