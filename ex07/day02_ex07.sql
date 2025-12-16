SELECT DISTINCT z.name
FROM person_visits pv
JOIN person p ON p.id = pv.person_id
JOIN menu m ON m.pizzeria_id = pv.pizzeria_id
JOIN pizzeria z ON z.id = pv.pizzeria_id
WHERE p.name = 'Dmitriy'
  AND pv.visit_date = '2022-01-08'
  AND m.price < 800;