/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема: Запрос с GROUP BY и JOIN
Условие:Отдел маркетинга хочет узнать, какие бренды чаще всего были заказаны клиентами из Москвы. 
Для каждого бренда выведите общее количество заказанных позиций (order_item_id) клиентами из города Москвы. 
Отсортируйте в алфавитном порядке.

Поля в результирующей таблице: product_brand, items_count
*/

SELECT
  p.product_brand,
  COUNT(oi.order_item_id) AS items_count
FROM
  customers c
  INNER JOIN orders o ON o.customer_id = c.customer_id
  INNER JOIN order_items oi ON oi.order_id = o.order_id
  INNER JOIN products p ON p.product_id = oi.product_id
WHERE
  c.customer_city = 'Москва'
GROUP BY
  p.product_brand
ORDER BY
  p.product_brand

  