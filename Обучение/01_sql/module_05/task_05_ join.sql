/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема:JOIN
Условие: Создайте единый список, в котором будут присутствовать 
все клиенты из customers и все заказы из orders. Нужно вывести customer_id и order_id. 
Отсортируйте по возрастанию order_id.

Поля в результирующей таблице: customer_id, order_id
*/

SELECT
  c.customer_id,
  o.order_id
FROM
  customers c FULL
  JOIN orders o ON c.customer_id = o.customer_id
ORDER BY
  order_id

  