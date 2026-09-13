-- !preview conn=DBI::dbConnect(RSQLite::SQLite())

DROP TABLE IF EXISTS ratings;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS movies;

CREATE TABLE users (
    user_id INTEGER PRIMARY KEY,
    user_name TEXT NOT NULL
);

CREATE TABLE movies (
    movie_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL UNIQUE
);

CREATE TABLE ratings (
    user_id INTEGER NOT NULL,
    movie_id INTEGER NOT NULL,
    rating INTEGER,
    PRIMARY KEY (user_id, movie_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    CHECK (rating BETWEEN 1 AND 5 OR rating IS NULL)
);

INSERT INTO users (user_id, user_name) VALUES
    (1, 'Person 1'),
    (2, 'Person 2'),
    (3, 'Person 3'),
    (4, 'Person 4'),
    (5, 'Person 5');

INSERT INTO movies (movie_id, title) VALUES
    (1, 'Spiderman Brand New Day'),
    (2, 'The Odyssey'),
    (3, 'Obsession'),
    (4, 'The Whisper Man'),
    (5, 'The Dog Stars'),
    (6, 'Star Wars: The Mandalorian and Grogu');

INSERT INTO ratings (user_id, movie_id, rating) VALUES
    (1,1,5),    (1,2,5),    (1,3,4),
    (1,4,2),    (1,5,NULL), (1,6,NULL),

    (2,1,5),    (2,2,5),    (2,3,3),
    (2,4,3),    (2,5,NULL), (2,6,4),

    (3,1,4),    (3,2,4),    (3,3,4),
    (3,4,4),    (3,5,3),    (3,6,NULL),

    (4,1,5),    (4,2,NULL), (4,3,4),
    (4,4,NULL), (4,5,NULL), (4,6,5),

    (5,1,4),    (5,2,5),    (5,3,5),
    (5,4,3),    (5,5,3),    (5,6,4);
