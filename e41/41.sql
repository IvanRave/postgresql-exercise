DROP TRIGGER IF EXISTS add_default ON operation;
DROP TABLE IF EXISTS operation;
DROP TABLE IF EXISTS article;

CREATE TABLE article (
id      INT PRIMARY KEY,
name    TEXT NOT NULL,
rest    INT NOT NULL
);

CREATE TABLE operation (
id      SERIAL PRIMARY KEY,
optype  SMALLINT NOT NULL,
article_id INT NOT NULL,
quantity   INT NOT NULL,
opdate     TIMESTAMP NOT NULL,
CONSTRAINT operation_article_id
FOREIGN KEY (article_id)
REFERENCES article (id)
);

INSERT INTO article (id, name, rest)
SELECT
s,
s::text,
trunc(random() * 200)
FROM generate_series(0,10) AS s;

CREATE TRIGGER add_default
BEFORE INSERT ON operation
FOR EACH ROW
EXECUTE PROCEDURE sp_41();

SELECT * FROM article WHERE id = 4;

INSERT INTO operation(optype, article_id, quantity)
VALUES (1, 4, 100);

SELECT * FROM article WHERE id = 4;

INSERT INTO operation(optype, article_id, quantity)
VALUES (0, 4, 100);

SELECT * FROM article WHERE id = 4;
