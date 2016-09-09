DROP TABLE sensel;

CREATE TABLE sensel (
buzz  TEXT NOT NULL
);

INSERT INTO sensel (buzz)
VALUES 
('bar'),
('foo'),
('hello'),
('hello'),
('world'),
('bar');

SELECT * FROM sensel;

DELETE FROM sensel s1
USING sensel s2
WHERE s1.buzz = s2.buzz
AND s1.ctid < s2.ctid;

SELECT * FROM sensel;
