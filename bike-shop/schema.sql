CREATE TABLE bikes (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  price DECIMAL DEFAULT 0.00,
  frame_id INTEGER FOREIGN KEY,
  rings_front INTEGER DEFAULT 3,
  rings_back INTEGER DEFAULT 7,
  brakes_front BOOLEAN DEFAULT TRUE,
  brakes_back BOOLEAN DEFAULT TRUE
);

CREATE TABLE frames (
  id SERIAL PRIMARY KEY,
  color VARCHAR DEFAULT 'black',
  size INTEGER DEFAULT 55,
  style VARCHAR 'street'
)

CREATE TABLE tires (
  id SERIAL PRIMARY KEY,
  diameter INTEGER DEFAULT 22,
  type VARCHAR DEFAULT 'street'
)

CREATE TABLE bike_frame (
  id SERIAL PRIMARY KEY,
  bike_id INTEGER FOREIGN KEY DEFAULT NULL,
  front_tire_id INTEGER FOREIGN KEY DEFAULT NULL,
  back_tire_id INTEGER FOREIGN KEY DEFAULT NULL
)
