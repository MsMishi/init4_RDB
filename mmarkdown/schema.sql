CREATE TABLE mmarkdown (
  id SERIAL PRIMARY KEY,
  filename VARCHAR,
  content VARCHAR,
  created_date TIMESTAMP,
  edited_on TIMESTAMP,
  word_count INTEGER
);

/*FEATURES YOU COULD TECHNICALLY WRITE*/
/*LIST ALL FILES*/
SELECT * FROM mmarkdown;

/*LIST ALL FILES ORDERED BY EDIT TIME*/
SELECT * FROM mmarkdown
  ORDER BY edited_on DESC
  ;

/*SHOW FILE WITH PARTICULAR NAME*/
SELECT * FROM mmarkdown
  WHERE filename = "particular"
  ;

/*LIST CREATED DATE OF ALL FILES*/
SELECT created_date FROM mmarkdown;

/*LIST EVERY FILE NAME AND ITS WORD COUNT*/
SELECT filename, word_count FROM mmarkdown;
