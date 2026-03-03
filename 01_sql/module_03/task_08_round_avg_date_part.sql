/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема: 
Задача:

*/

SELECT
  customer_id,
  ROUND(
    AVG(
      DATE_PART(
        'day',
        order_delivered_customer_time - order_estimated_delivery_time
      ) :: integer
    ),
    2
  ) as average_delay_days
FROM
  orders
WHERE
  order_delivered_customer_time > order_estimated_delivery_time
  order_delivered_customer_time IS NOT NULL AND order_estimated_delivery_time IS NOT NULL
GROUP BY
  customer_id
HAVING
  AVG(
    DATE_PART(
      'day',
      order_delivered_customer_time - order_estimated_delivery_time
    )
  ) > 2
ORDER BY
  customer_id


