-- install zombodb extension
CREATE EXTENSION zombodb;

--- Create the notes database with index
CREATE TABLE notes (
  id SERIAL8 UNIQUE NOT NULL PRIMARY KEY,
  title text NOT NULL,
  keywords varchar(64)[],
  short_desc text NOT NULL,
  body zdb.fulltext
);

--- Insert some testing data
INSERT INTO notes (title, keywords, short_desc, body)
  VALUES ('Science 101', ARRAY ['science', 'cool'], 'A note about everything that will and has', 'A note about everything that will and has ever had to do with science.');

INSERT INTO notes (title, keywords, short_desc, body)
  VALUES ('Naked art', ARRAY ['science', 'cool'], 'naked art', 'I love naked art because I am a true artist');

INSERT INTO notes (title, keywords, short_desc, body)
  VALUES ('History lecture 4.1', ARRAY ['science', 'cool'], 'History lecture 4.1', 'History lecture 4.1 notes containing everything from world war 2 and beyond.');

INSERT INTO notes (title, keywords, short_desc, body)
  VALUES ('Differential Equations', ARRAY ['science', 'cool'], 'numerical integration solutions', 'In this short paper, learn all about the nuances of differential equations\nLearn how to avoid complex numerical integration solutions by simulation iteratively with a continuous step-time simulation.');

INSERT INTO notes (title, keywords, short_desc, body)
  VALUES ('The complex classification of fake news in 2021', ARRAY ['science', 'cool'], 'distribute fake news.', 'We explore the multitude of mediums that the people uses to distribute fake news.');

--- Create the index
CREATE INDEX idxnotes ON notes USING zombodb ((notes.*)) WITH (url='http://elasticsearch:9200/', alias='studysnap_db.notes');