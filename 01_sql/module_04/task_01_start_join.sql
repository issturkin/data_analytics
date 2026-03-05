/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема: Знакомство с JOIN 
Условие: Напишите SQL-запрос, чтобы для каждого товара в заказе (order_items) вывести его цену (price) и категорию (product_category_name). Отсортируйте результат по убыванию цены.

Поля в результирующей таблице: price, product_category_name.
*/

SELECT
  oi.price,
  p.product_category_name
FROM
  order_items AS oi
  JOIN products AS p ON oi.product_id = p.product_id
ORDER BY
  price DESC

