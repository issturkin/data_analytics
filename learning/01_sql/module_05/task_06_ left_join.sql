/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема:Запрос с LEFT JOIN 
Условие:Напишите SQL-запрос, который выведет всех клиентов (customer_id) и какие действия они совершали (event_type из таблицы customer_actions). Если клиент не совершал никаких действий, на месте event_type должно быть NULL. Оставьте только уникальные комбинации сustomer_id и event_type. Отсортируйте по возрастанию customer_id и event_type.

Поля в результирующей таблице: customer_id, event_type
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
  
  