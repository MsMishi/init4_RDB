CREATE TABLE bossggle (
  id SERIAL PRIMARY KEY,
  word VARCHAR,
  is_correct BOOLEAN,
  letter_count INTEGER,
  word_score INTEGER,
  time_entered DECIMAL,
  player_name VARCHAR
);

/*DISPLAY ALL WORDS GUESSED*/
SELECT word FROM bossggle;

/*COUNT ALL CORRECT WORDS GUESSED*/
SELECT COUNT(*) FROM bossggle
  WHERE is_correct = TRUE
  ;

/*COUNT ALL INCORRECT WORDS GUESSED*/
SELECT COUNT(*) FROM bossggle
  WHERE is_correct = FALSE
  ;

/*LIST ALL WORDS AND THEIR SCORES*/
SELECT word, word_score FROM bossggle;

/*SUM OF SCORES FOR ALL WORDS*/
SELECT SUM(word_score) FROM bossggle;

/*SHOW 10 MOST RECENT WORD GUESSES*/
SELECT word FROM bossggle
  ORDER BY time_entered DESC
  LIMIT 10
  ;
