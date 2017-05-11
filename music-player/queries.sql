/*Show the first 10 songs closest to 2 and a half minutes*/
SELECT title, album, artist FROM songs
  WHERE length < 2.5
  ORDER BY length DESC
  LIMIT 10
  ;

/*show artists that start with r and have USD genre*/
SELECT name FROM artists
  WHERE artist LIKE 'r%' AND genre = 'USD'
  ;

/*show count of albums less than 15 songs by artist*/
SELECT COUNT(*) FROM albums
  GROUP BY artist
  HAVING song_count < 15
  ;

/*finds all artists with genre 'USD' or 'EUR'*/
SELECT * FROM artists
  WHERE genre IN ('USD','EUR')
  ;

/*adds album title based on matching the artist*/
SELECT songs.title, songs.artist songs.length, albums.title
  FROM songs
  LEFT JOIN albums on songs.artist = albums.artist
  ;
