/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема: 
Условие: 
*/

SELECT
  c.customer_id,
  o.order_id
FROM
  customers c FULL
  JOIN orders o ON c.customer_id = o.customer_id
ORDER BY
  order_id