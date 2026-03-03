/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема: CASE WHEN внутри агрегатной функции. 
Задача: посчитать количество заказов в статусе "Returned" и "Delivered" для каждого покупателя.
*/

SELECT
  customer_id,
  COUNT(
    CASE
      WHEN order_status = 'Returned' THEN 1
    END
  ) AS returned_orders,
  COUNT(
    CASE
      WHEN order_status = 'Delivered' THEN 1
    END
  ) AS delivered_orders
FROM
  orders
GROUP BY
  1
ORDER BY
  1