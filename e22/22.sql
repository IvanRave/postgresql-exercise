DROP TABLE employee;
DROP TABLE division;

CREATE TABLE division (
id          INT PRIMARY KEY,
name        TEXT NOT NULL
);

CREATE TABLE employee (
id          INT PRIMARY KEY,
name        TEXT NOT NULL,
hire_date   DATE NOT NULL,
division_id INT NOT NULL,
CONSTRAINT  employee_division_id
FOREIGN KEY (division_id)
REFERENCES  division (id)
);

INSERT INTO division (id, name)
VALUES (1, 'first division'), (2, 'second division'), (3, 'third division');

INSERT INTO employee (id, name, hire_date, division_id)
SELECT
generate_series(1,10) AS id,
md5(random()::text)   AS name,
current_date          AS hire_date,
trunc(random() * 3 + 1) AS division_id;

SELECT * FROM sp_22();
