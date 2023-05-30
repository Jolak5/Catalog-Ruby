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