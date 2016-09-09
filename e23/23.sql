DROP TABLE x1;
DROP TABLE x2;

CREATE TABLE x1 (
dvsn    TEXT NOT NULL,
empl    TEXT NOT NULL
);

CREATE TABLE x2 (
dvsn    TEXT NOT NULL,
empl    TEXT NOT NULL
);

INSERT INTO x1 (dvsn, empl)
VALUES
('analyze', 'Chris'),
('devel', 'Snout'),
('devel', 'Sarto');

INSERT INTO x2 (dvsn, empl)
VALUES
('test', 'Chris'),
('devel', 'Snout'),
('test', 'Harry'),
('devel', 'Sarto');

SELECT * FROM x1 UNION SELECT * FROM x2;
