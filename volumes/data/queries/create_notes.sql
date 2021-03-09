CREATE TABLE notes (
  id INTEGER PRIMARY KEY NOT NULL,
  title VARCHAR(50) NOT NULL,
  body VARCHAR NOT NULL
);
INSERT INTO notes (id, title, body)
  VALUES (1, 'Science 101', 'A note about everything that will and has ever had to do with science.');

INSERT INTO notes (id, title, body)
  VALUES (2, 'Naked art', 'I love naked art because I am a true artist');

INSERT INTO notes (id, title, body)
  VALUES (3, 'History lecture 4.1', 'History lecture 4.1 notes containing everything from world war 2 and beyond.');

INSERT INTO notes (id, title, body)
  VALUES (4, 'Differential Equations', 'In this short paper, learn all about the nuances of differential equations\nLearn how to avoid complex numerical integration solutions by simulation iteratively with a continuous step-time simulation.');

INSERT INTO notes (id, title, body)
  VALUES (5, 'The complex classification of fake news in 2021', 'We explore the multitude of mediums that the people uses to distribute fake news.');