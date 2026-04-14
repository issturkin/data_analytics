/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема: Агреггация с FILTER.
Задача: Получить количество заказов и количество опоздавших заказов по каждому статусу заказа.
Опоздавшим считается заказ, который был доставлен клиенту позже, чем планировалось.
*/

SELECT
  order_status,
  COUNT(order_id) AS total_orders,
  COUNT(order_delivered_customer_time) FILTER(
    WHERE
      order_delivered_customer_time > order_estimated_delivery_time
  ) AS late_orders
FROM
  orders
GROUP BY
  1

  