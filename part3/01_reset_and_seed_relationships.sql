

CREATE EXTENSION IF NOT EXISTS pgcrypto;


DROP TABLE IF EXISTS post_tags;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS tags;
DROP TABLE IF EXISTS users;


CREATE TABLE user (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

  name TEXT NOT NULL
);

CREATE TABLE posts (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

  user_id UUID NOT NULL REFERENCE users(id),

  title TEXT NOT NULL,

  status TEXT NOT NULL DEFAULT 'draft'
    CHECK (status IN ('draft', 'published')),

  views INTEGER NOT NULL DEFAULT 0 CHECK (views >= 0)
);

CREATE TABLE comments (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

  post_id UUID NOT NULL DEFAULT REFERENCES posts(id),

  body TEXT NOT NULL
);

CREATE TABLE tags (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

  name TEXT NOT NULL UNIQUE
);

CREATE TABLE post_tags (
  post_id UUID NOT NULL REFERENCES posts(id),
  tag_id UUID NOT NULL REFERENCES tags(id),

  PRIMARY KEY (post_id, tag_id)
);


INSERT INTO users (name) VALUES 
  ('Ananya'),
  ('Rahul');

INSERT INTO posts(user_id, title, status, views)
SELECT id, 'PostreSQL Joins Explained', 'Published', 100
FROM users
WHERE name = 'Ananya';

INSERT INTO posts(user_id, title, status, views)
SELECT id, 'Indexes for  Beginners', 'draft', 40
FROM users
WHERE name = 'Ananya';

INSERT INTO posts(user_id, title, status, views)
SELECT id, 'Backend APIs with PostreSQL', 'Published', 180
FROM users
WHERE name = 'Ananya';