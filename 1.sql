CREATE TABLE Genre (
    genre_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);


CREATE TABLE Artists (
    artist_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE Albums (
    album_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    artist_id INT NOT NULL,
    genre_id INT NOT NULL,
    release_year INT,
    total_tracks INT
);

ALTER TABLE Albums ADD COLUMN duration INT;

ALTER TABLE Albums
ADD CONSTRAINT fk_artist
FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
ADD CONSTRAINT fk_genre
FOREIGN KEY (genre_id) REFERENCES Genre(genre_id);