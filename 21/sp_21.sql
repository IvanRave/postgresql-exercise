CREATE OR REPLACE FUNCTION sp_21(
  t_start date,
  t_end   date
)
RETURNS TABLE(
  o_date date,
  o_summ text
)
AS $$
BEGIN

  RETURN QUERY
  SELECT date(d), COALESCE(SUM(p.summ)::text, 'null')
  FROM generate_series(t_start, t_end, '1 day') AS d
  LEFT OUTER JOIN pay p
  ON p.created = d
  GROUP BY d;

END;
$$ LANGUAGE plpgsql;
