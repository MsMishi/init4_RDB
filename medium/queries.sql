/*REMOVE OFFENSIVE CONTENT*/
DELETE FROM articles
  WHERE content LIKE '%Donald Trump is great%'
  ;

/*SEE TOP TEN MOST READ articles*/
SELECT title, author FROM articles
  ORDER BY times_read DESC
  LIMIT 10
  ;
