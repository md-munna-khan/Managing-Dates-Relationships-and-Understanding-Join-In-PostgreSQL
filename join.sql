CREATE Table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

CREATE Table post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
)



INSERT INTO "user" (username) VALUES
('akash'),
('batash'),
('sagor'),
('nodi');

INSERT INTO post (title, user_id) VALUES
('Enjoying a sunny day with Akash! ☀️', 2),
('Batash just shared an amazing recipe! 🍲', 1),
('Exploring adventures with Sagor.🌟', 4),
('Nodi''s wisdom always leaves me inspired. 📚', 4);


DROP Table post;
DROP Table "user";

SELECT * from "user";
SELECT * from post;


SELECT * FROM "user"
join post on post.user_id = "user".id;
-- first call column show first
SELECT * FROM post
join "user" on post.user_id = "user".id;

INSERT INTO post (id,title, user_id) VALUES
(5,'this is test post', NULL);

-- left join
SELECT * FROM post
left join "user" on post.user_id = "user".id;

SELECT * FROM "user"
left join post on post.user_id = "user".id;

--- Right JOin
SELECT * FROM "user"
RIGHT   outer join post on post.user_id = "user".id;

SELECT * FROM post
RIGHT  outer  join "user" on post.user_id = "user".id;

--- full join
SELECT * FROM post
FULL  outer  join "user" on post.user_id = "user".id;