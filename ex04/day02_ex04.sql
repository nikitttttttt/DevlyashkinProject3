WITH days AS (
    SELECT generate_series('2022-01-01', '2022-01-10', interval '1 day')::date AS day
)
SELECT d.day AS missing_date
FROM days d
LEFT JOIN person_visits pv
  ON pv.visit_date = d.day
 AND pv.person_id IN (1, 2)
WHERE pv.id IS NULL
ORDER BY missing_date;