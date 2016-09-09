CREATE OR REPLACE FUNCTION sp_22()
RETURNS TEXT
AS $$
DECLARE
  t_month TIMESTAMP;
  t_name  TEXT;
BEGIN
  -- current month
  t_month :=  date_trunc('month', current_date);

  -- use outer join to show divisions without employees too
  SELECT d.name
  FROM division d
  LEFT OUTER JOIN employee e
  ON d.id = e.division_id
  WHERE date_trunc('month', hire_date) = t_month
  GROUP BY d.id
  ORDER BY count(e) DESC
  LIMIT 1
  INTO t_name;

  RETURN t_name;
END;
$$ LANGUAGE plpgsql;
