/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема: LEFT JOIN 
Условие:Выведите всех пользователей из таблицы customers и укажите их order_id из таблицы orders, 
если пользователь делал заказы, если у пользователей не было заказов, то мы не исключаем этих 
пользователей из результата а ожидаем NULL в колонке order_id. Отсортируйте по возрастанию customer_id.

Поля в результирующей таблице: customer_id,  order_id
*/

SELECT
  cust.customer_id,
  ord.order_id
FROM
  customers AS cust
  LEFT JOIN orders AS ord ON cust.customer_id = ord.customer_id
ORDER BY
  customer_id

  