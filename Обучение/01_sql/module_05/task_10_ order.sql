/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема: Порядок выполнения запроса 
Условие:Определите, какие части этого запроса выполняются раньше остальных, 
а какие — позже. Пронумеруйте порядок работы SQL-движка для этого запроса:
*/

SELECT oi.product_id, COUNT(oi.order_item_id) AS items
FROM orders AS o
JOIN order_items AS oi ON o.order_id = oi.order_id
WHERE o.order_status = 'Delivered'
GROUP BY oi.product_id
HAVING COUNT(oi.order_item_id) > 5
ORDER BY items DESC
LIMIT 10

FROM
JOIN
WHERE
GROUP BY
HAVING
SELECT
ORDER BY
LIMIT

