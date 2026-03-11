/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема: Знакомство с FULL OUTER JOIN
Условие: Выведите всех клиентов (customer_id) и их заказы (order_id). 
Если у клиента нет заказов, то order_id должен быть NULL. 
Если же заказ не привязан к клиенту, то customer_id должен быть NULL. Отсортируйте результат по order_id.
*/

SELECT
  c.customer_id,
  o.order_id
FROM
  customers c FULL
  JOIN orders o ON c.customer_id = o.customer_id
ORDER BY
  order_id

