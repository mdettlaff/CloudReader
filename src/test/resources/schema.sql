CREATE TABLE Feed (
	url VARCHAR(500) NOT NULL PRIMARY KEY,
	title VARCHAR(255),
	link VARCHAR(255)
);

CREATE TABLE FeedItem (
	guid VARCHAR(255) NOT NULL PRIMARY KEY,
	feed_url VARCHAR(255) NOT NULL,
	title VARCHAR(255),
	link VARCHAR(255),
	description CLOB,
	date TIMESTAMP,
	downloadDate TIMESTAMP,
	author VARCHAR(255),
	uri VARCHAR(255),
	read BOOLEAN,
	FOREIGN KEY(feed_url) REFERENCES Feed(url)
);
