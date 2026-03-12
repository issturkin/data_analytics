/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема: MAX + COUNT + JOIN
Условие:Менеджеры хотят вернуть клиентов, которые делали меньше трёх заказов. Покажите таких клиентов с их customer_id, городом и датой последнего заказа. Отсортируйте по возрастанию customer_id.

Поля в результирующей таблице: customer_id, customer_city, last_order_date, total_orders
*/

SELECT
  c.customer_id,
  c.customer_city,
  MAX(o.order_created_time) as last_order_date,
  COUNT(DISTINCT o.order_id) as total_orders
FROM
  customers c
  JOIN orders o USING(customer_id)
GROUP BY
  customer_id
HAVING
  COUNT(DISTINCT o.order_id) < 3
ORDER BY
  customer_id

  