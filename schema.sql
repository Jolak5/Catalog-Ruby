CREATE TABLE authors (
    id BIGSERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
)

CREATE TABLE games (
    id BIGSERIAL PRIMARY KEY,
    multiplayer VARCHAR(50),
    last_played_at DATE,
    items_id int references item(id)
)

CREATE TABLE book (
	id SERIAL PRIMARY KEY,
	publisher VARCHAR(50) ,
  cover_state VARCHAR(50)
);

CREATE TABLE label (
  id SERIAL PRIMARY KEY,
  title VARCHAR(50),
  color VARCHAR(50)
);

CREATE TABLE item (
 id SERIAL PRIMARY KEY,
 genre_id INTEGER,
 author_id INTEGER,
 label_id INTEGER,
 publish_date DATE,
 archived BOOLEAN
);