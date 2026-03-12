/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема:Запрос с UNION
Условие:Получите список всех уникальных product_id, которые хотя бы раз заказывали либо клиенты с ними взаимодействовали (customer_actions).

Поля в результирующей таблице: product_id
*/

SELECT
  product_id
FROM
  products
UNION
SELECT
  product_id
FROM
  customer_actions


  