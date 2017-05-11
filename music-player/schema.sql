CREATE TABLE songs (
  id SERIAL PRIMARY KEY
  title VARCHAR,
  length DECIMAL,
  album VARCHAR DEFAULT NULL,
  artist VARCHAR,
  track_num INTEGER
);

CREATE TABLE albums (
  id SERIAL PRIMARY KEY,
  title VARCHAR,
  song_count INTEGER,
  artist VARCHAR
);

CREATE TABLE artists (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  band_members VARCHAR,
  genre VARCHAR
);

CREATE TABLE playlists (
  id SERIAL PRIMARY KEY
  name VARCHAR,
  song VARCHAR
);
