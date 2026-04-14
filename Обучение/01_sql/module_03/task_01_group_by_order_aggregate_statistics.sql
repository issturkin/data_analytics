/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема:
Агрегатные функции + GROUP BY.

Рассчитывается для каждого заказа:
- total_price — суммарная стоимость
- items_count — количество позиций
- avg_price — средняя стоимость товара
- max_price — максимальная цена
- min_price — минимальная цена

Сортировка по возрастанию order_id.
*/

-- УСЛОВИЕ:
-- Для каждого заказа (order_id) получить:
-- суммарную стоимость (total_price),
-- количество позиций (items_count),
-- среднюю стоимость (avg_price),
-- максимальную стоимость (max_price),
-- минимальную стоимость (min_price).
-- Отсортировать по возрастанию order_id.
-- Поля: order_id, total_price, items_count, avg_price, max_price, min_price.

SELECT
    order_id,
    SUM(price) AS total_price,
    COUNT(order_item_id) AS items_count,
    AVG(price) AS avg_price,
    MAX(price) AS max_price,
    MIN(price) AS min_price
FROM order_items
GROUP BY order_id
ORDER BY order_id