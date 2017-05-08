CREATE TABLE comic_books (id INTEGER PRIMARY KEY, name TEXT, issue_num INTEGER, condition TEXT, cover_price REAL, overstreet_price INTEGER);

INSERT INTO comic_books VALUES (1, "Detective Comics", 27, "VF", .10, 170000);
INSERT INTO comic_books VALUES (2, "Action Comics", 1, "G+", .10, 195000);
INSERT INTO comic_books VALUES (3, "Incredible Hulk", 181, "NM/M", .25, 140000 );
INSERT INTO comic_books VALUES (4, "NYX", 3, "NM/M", 2.99, 1200);
INSERT INTO comic_books VALUES (5, "Saga", 1, "NM/M", 2.99, 480);
INSERT INTO comic_books VALUES (6, "Groo", 1, "VF", .99, 5);
INSERT INTO comic_books VALUES (7, "New Mutants", 98, "NM", 1, 940);
INSERT INTO comic_books VALUES (8, "Amazing Fantasy", 15, "G+", .10, 7000);
INSERT INTO comic_books VALUES (9, "Seven to Eternity", 1, "NM/M", 2.99, 115);
INSERT INTO comic_books VALUES (10, "Deadly Class", 1, "NM/M", 2.99, 35);
INSERT INTO comic_books VALUES (11, "America", 1, "NM/M", 3.99, 4);
INSERT INTO comic_books VALUES (12, "Doctor Strange", 1, "F/VF", .25, 79);
INSERT INTO comic_books VALUES (13, "Civil War", 1, "NM/M", 2.99, 29);
INSERT INTO comic_books VALUES (14, "X-O Manowar", 1, "NM", 1.95, 1);
INSERT INTO comic_books VALUES (15, "TMNT", 1, "VF+", 1, 30000);

SELECT name, issue_num, overstreet_price FROM comic_books GROUP BY overstreet_price;

SELECT condition, SUM(overstreet_price) FROM comic_books GROUP BY condition;
