

DROP TABLE IF EXISTS basics.products_basic;

CREATE TABLE basics.products_basic (

  id SERIAL PRIMARY KEY,

  -- string -> maximum length of 100 characters
  name VARCHAR(100) NOT NULL,

  description TEXT,

  stock INTEGER DEFAULT 0,

  -- store larger whole number than INTEGER
  total_view BIGINT DEFAULT 0,
);