DROP TABLE task;

CREATE TABLE task (
name        TEXT NOT NULL,
bugs_count  INT NOT NULL
);

INSERT INTO task (name, bugs_count)
SELECT
md5(random()::text),
trunc(random() * 40 + 1)
FROM generate_series(1,5);

SELECT * FROM task;

DELETE FROM task
WHERE ctid IN (
      SELECT ctid
      FROM task
      ORDER BY bugs_count DESC
      LIMIT 3
);

SELECT * FROM task;
