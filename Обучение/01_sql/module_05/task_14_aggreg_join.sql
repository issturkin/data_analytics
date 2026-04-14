/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема: Агрегатные функции + Оконные функции
Условие:В каждом городе рассчитайте долю отменённых заказов (order_status = 'Returned'). Выведите город, общее число заказов, число отмен и процент отмен (округлите его до 2 знака). Отсортируйте по убыванию процента отмен.

Поля в результирующей таблице: customer_city, total_orders, canceled_orders, cancel_rate_percent
*/

SELECT
  c.customer_city,
  COUNT(o.order_created_time) as total_orders,
  COUNT(
    CASE
      WHEN o.order_status = 'Returned' THEN 1
    END
  ) as canceled_orders,
  ROUND(
    COUNT(
      CASE
        WHEN o.order_status = 'Returned' THEN 1
      END
    ) :: numeric / COUNT(o.order_created_time) * 100.00,
    2
  ) as cancel_rate_percent
FROM
  customers c
  JOIN orders o USING(customer_id)
GROUP BY
  customer_city
ORDER BY
  cancel_rate_percent DESC

  