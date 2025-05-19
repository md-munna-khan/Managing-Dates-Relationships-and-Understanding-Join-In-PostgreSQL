create Table "user"(
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(40) NOT NULL
);

CREATE Table post(
    id SERIAL PRIMARY KEY,
    title TEXT not NULL,
    user_id INT REFERENCES "user"(id)  on DELETE set DEFAULT DEFAULT 2
);
ALTER TABLE post
alter COLUMN user_id set not NULL; 

INSERT INTO "user"(user_name) VALUES
('akash'),
('batash'),
('nodi'),
('mala');

INSERT into post(title,user_id) VALUES();
SELECT * FROM "user";

DROP TABLE "user";
DROP Table post;


INSERT INTO post (title, user_id) VALUES
('Enjoying a sunny day with Akash! ☀️', 1),
('Batash just shared an amazing recipe! 🍲', 2),
('Exploring adventures with Sagor.🌟', 4),
('Nodi''s wisdom always leaves me inspired. 📚', 4);

SELECT * FROM post;


-- Insertion constraint on INSERT post
-- Attempting to insert a post with a user ID that does not exist
INSERT INTO post (title, user_id) VALUES('test',1)

-- Inserting a post with a valid user ID
-- Attempting to insert a post without specifying a user ID
INSERT INTO post (title, user_id) VALUES('test',NULL);

---------------- DELETE--------------------

DELETE FROM "user"
WHERE id = 4;
-- Deletion constraint on DELETE user
-- Restrict Deletion -> ON DELETE RESTRICT / ON DELETE NO ACTION (default)
-- Cascading Deletion -> ON DELETE CASCADE
-- Setting NULL -> ON DELETE SET NULL
-- Set Default value -> ON DELETE SET DEFAULT
