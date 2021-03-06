CREATE TABLE notes (
  id INTEGER PRIMARY KEY NOT NULL,
  title VARCHAR(50) NOT NULL,
  body VARCHAR NOT NULL
);
INSERT INTO notes (id, title, body)
  VALUES (1, 'Science 101', 'A note about everything that will and has ever had to do with science.');