
-- null - unknown/missing value
-- empty string - known string value, but it contains no character
-- zero - actual numeric value of 0

DROP TABLE IF EXISTS basics.value_examples;

CREATE TABLE basics.value_examples (

  id SERIAL PRIMARY KEY,

  nickname TEXT,

  bio TEXT,

  score INTEGER
);

INSERT INTO basics.value_examples (nickname, bio, score)
VALUES
  -- nickname is null
  (null, 'learning postgreSQL', 10),
  ('', 'empty nickname', 20),
  ('shina', '', 0),
  ('sangam', null, null);

-- SELECT * FROM basics.value_examples;

SELECT * FROM basics.value_examples WHERE nickname IS NULL;

-- write one query to find where nickname is empty string

SELECT score FROM basics.value_examples WHERE nickname = '';

SELECT * FROM basics.value_examples WHERE score = 0;

SELECT * FROM basics.value_examples WHERE nickname IS NOT NULL;