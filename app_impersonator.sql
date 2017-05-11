CREATE TABLE agar_players (
    id INTEGER PRIMARY KEY,
    username TEXT,
    high_score INTEGER,
    play_attempts INTEGER,
    top_position TEXT DEFAULT FALSE);

INSERT INTO agar_players (username, high_score, play_attempts) VALUES ("cool gal", 5, 1);

INSERT INTO agar_players (username, high_score, play_attempts) VALUES ("cool guy", 20, 3);

INSERT INTO agar_players (username, high_score, play_attempts) VALUES ("meh", 70, 2);

SELECT * FROM agar_players;

UPDATE agar_players SET high_score = 9001,
    play_attempts = 2,
    top_position = "TRUE"
    WHERE username = "cool gal"
    ;

SELECT * FROM agar_players;

DELETE FROM agar_players WHERE username = "cool guy";
