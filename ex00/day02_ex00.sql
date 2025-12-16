SELECT
    z.name,
    z.rating
FROM pizzeria z
LEFT JOIN person_visits pv
    ON pv.pizzeria_id = z.id
WHERE pv.id IS NULL;