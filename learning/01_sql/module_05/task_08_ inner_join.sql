/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема:Запрос с INNER JOIN
Условие:Напишите запрос, который для каждого товара в заказе (order_items) выведет его цену (price) и идентификатор (product_id). Используйте синтаксис USING для соединения таблиц. Отсортируйте по возрастанию цены. 

Поля в результирующей таблице: price, product_id
*/

SELECT
  oi.price,
  p.product_id
FROM
  order_items oi
  INNER JOIN products p USING (product_id)
ORDER BY
  price

  