SELECT
    m.pizza_name,
    z.name AS pizzeria_name
FROM person_order po
JOIN person p ON p.id = po.person_id
JOIN menu m ON m.id = po.menu_id
JOIN pizzeria z ON z.id = m.pizzeria_id
WHERE p.name IN ('Denis', 'Anna')
ORDER BY pizza_name, pizzeria_name;