SELECT
    COALESCE(p.name, '-') AS person_name,
    COALESCE(z.name, '-') AS pizzeria_name,
    pv.visit_date
FROM person p
FULL JOIN person_visits pv
  ON p.id = pv.person_id
 AND pv.visit_date BETWEEN '2022-01-01' AND '2022-01-03'
FULL JOIN pizzeria z
  ON z.id = pv.pizzeria_id
ORDER BY person_name, pizzeria_name, visit_date;