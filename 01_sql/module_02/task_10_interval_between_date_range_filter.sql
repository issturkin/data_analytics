/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема:
INTERVAL + BETWEEN + фильтрация по дате

Метод:
1. Фильтрация по дате создания
2. Работа с INTERVAL
3. BETWEEN для диапазона дат
4. Проверка IS NOT NULL
5. Сортировка по убыванию даты

Результат:
order_id,
order_status,
order_created_time
---------------------------------------------------------
*/


SELECT
  order_id,
  order_status,
  order_created_time
FROM
  orders
WHERE
  (order_created_time >= '2024-01-05')
  AND (order_status = 'Delivered')
  AND (
    order_estimated_delivery_time BETWEEN order_created_time + INTERVAL '5 days'
    AND order_created_time + INTERVAL '10 days'
  )
  AND order_delivered_customer_time IS NOT NULL
ORDER BY
  order_created_time DESC