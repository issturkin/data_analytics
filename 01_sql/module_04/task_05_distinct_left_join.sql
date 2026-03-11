/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема:Знакомство с LEFT JOIN и DISTINCT
УСловие: Выведите всех клиентов (customer_id) и их действия (event_type). 
Если у клиента нет действий, то event_type должен быть NULL.
Отсортируйте результат по customer_id и event_type. 
В результирующей таблице не должно быть повторяющихся строк.
*/

SELECT
  DISTINCT c.customer_id,
  ca.event_type
FROM
  customers c
  LEFT JOIN customer_actions ca ON c.customer_id = ca.customer_id
ORDER BY
  customer_id,
  event_type

  