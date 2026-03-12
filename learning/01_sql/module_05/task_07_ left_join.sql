/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема: Запрос с LEFT JOIN
Условие:Отдел логистики хочет понять, товары каких брендов (product_brand) доставляются в определённые города. Напишите запрос, который выведет уникальные названия брендов, товары которых были в заказах со статусом Delivered для клиентов из Москвы. Отсортируйте результат в алфавитном порядке по убыванию.

Поля в результирующей таблице: product_brand
*/

SELECT
  DISTINCT product_brand
FROM
  products p
  LEFT JOIN order_items oi ON p.product_id = oi.product_id
  LEFT JOIN orders o ON o.order_id = oi.order_id
  LEFT JOIN customers c ON c.customer_id = o.customer_id
WHERE
  c.customer_city = 'Москва'
  AND order_status = 'Delivered'
ORDER BY
  product_brand DESC

