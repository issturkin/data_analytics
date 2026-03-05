/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема: Знакомство с RIGHT JOIN 
Условие: Выведите всех клиентов  из таблицы customers (customer_id, customer_city) и, если для этого клиента есть заказы, покажите order_id и order_status из orders. Отсортируйте результат по возрастанию order_id.
Поля в результирующей таблице: customer_id, customer_city, order_id, order_status
*/

SELECT
  c.customer_id,
  c.customer_city,
  v.order_id,
  v.order_status
FROM
  orders v
  RIGHT JOIN customers c ON c.customer_id = v.customer_id
ORDER BY
  order_id