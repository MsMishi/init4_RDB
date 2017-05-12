CREATE TABLE google_drive (
  id SERIAL PRIMARY KEY,
  filename VARCHAR DEFAULT "untitled",
  file_type VARCHAR,
  owner_email VARCHAR,
  creation_date TIMESTAMP,
  edited_date TIMESTAMP,
  id_shared_with INTEGER DEFAULT NULL,
  file_content VARCHAR
)

CREATE TABLE drive_users (
  user_id SERIAL PRIMARY KEY,
  real_name VARCHAR,
  email VARCHAR,
  group VARCHAR DEFAULT NULL,
  password VARCHAR
)
