/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема: Знакомство с LEFT JOIN
Условие: Напишите SQL-запрос, чтобы вывести всех клиентов (customer_id) и их заказы (order_id). 
Если у клиента нет заказов, то order_id должен быть NULL. Отсортируйте результат по customer_id.
*/

SELECT
  cust.customer_id,
  ord.order_id
FROM
  customers AS cust
  LEFT JOIN orders AS ord ON cust.customer_id = ord.customer_id
ORDER BY
  customer_id

  