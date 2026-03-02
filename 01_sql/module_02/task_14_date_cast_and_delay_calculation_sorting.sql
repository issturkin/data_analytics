/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема: 
1. Приведение TIMESTAMP к DATE (::DATE)
2. Расчёт разницы дат через DATE_PART
3. Вычисление количества дней задержки
4. Сортировка по вычисляемому полю и по ID

Формируется:
- order_created_day
- order_delivered_customer_day
- order_estimated_delivery_day
- delivery_delay_days
*/

SELECT
  order_id,
  order_created_time :: DATE AS order_created_day,
  order_delivered_customer_time :: DATE AS order_delivered_customer_day,
  order_estimated_delivery_time :: DATE AS order_estimated_delivery_day,
  (
    DATE_PART(
      'day',
      order_estimated_delivery_time - order_delivered_customer_time
    )
  ) AS delivery_delay_days
FROM
  orders
ORDER BY
  delivery_delay_days,
  order_id