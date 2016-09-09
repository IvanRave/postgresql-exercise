DROP TABLE role;
DROP TABLE actor;
DROP TABLE movie;

CREATE TABLE actor (
  id int primary key,
  name text not null
);

CREATE TABLE movie (
  id int primary key,
  name text not null
);

CREATE TABLE role (
  movie_id int not null,
  actor_id int not null,
  CONSTRAINT role_actor_id FOREIGN KEY (actor_id) REFERENCES actor(id),
  CONSTRAINT role_movie_id FOREIGN KEY (movie_id) REFERENCES movie(id)
);

INSERT INTO actor VALUES (1, 'John');
INSERT INTO actor VALUES (2, 'Ivan');

INSERT INTO movie VALUES (1, 'M1');

INSERT INTO role VALUES (1, 1);

SELECT a.id, a.name, COUNT(r) FROM actor a
LEFT OUTER JOIN role r
ON a.id = r.actor_id
GROUP BY a.id;
