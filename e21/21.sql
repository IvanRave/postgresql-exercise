DROP TABLE pay;

CREATE TABLE pay (
created  DATE,
summ     INT
);

INSERT INTO pay (created, summ) VALUES
(current_date, 30),
(date '2016-09-01', 20),
(date '2016-09-04', 120),
(date '2016-09-04', 150);

SELECT * FROM sp_21(date '2016-08-30', current_date);
