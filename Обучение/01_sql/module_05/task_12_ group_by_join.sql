/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема: Запрос с GROUP BY и JOIN
Условие:Нужно определить, на какие товарные категории поступает особенно большое число заказов 
(больше либо равно 400). 
Для каждой такой категории выведите название, число уникальных товаров и число заказов. 
Отсортируйте по количеству заказов в порядке убывания.

Поля в результирующей таблице: product_category_name, products_in_category, orders_count
*/

SELECT
  p.product_category_name,
  COUNT(DISTINCT oi.product_id) as products_in_category,
  COUNT(DISTINCT oi.order_id) as orders_count
FROM
  products p
  JOIN order_items oi USING(product_id)
GROUP BY
  product_category_name
HAVING
  COUNT(DISTINCT oi.order_id) >= 400
ORDER BY
  orders_count DESC

  