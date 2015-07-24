DROP TABLE IF EXISTS pictures;

CREATE TABLE pictures(
  id SERIAL PRIMARY KEY,
  author TEXT,
  photo_url TEXT,
  date_taken TEXT
);
