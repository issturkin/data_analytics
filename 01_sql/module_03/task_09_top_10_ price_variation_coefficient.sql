/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема: Коеффициент вариации цены для товаров. MAX, MIN, AVG, GROUP BY, ORDER BY, LIMIT.
*/

SELECT
  product_id,
  ROUND((MAX(price) - MIN(price)) / AVG(price), 3) AS price_variation_coefficient
FROM
  order_items
GROUP BY
  product_id
ORDER BY
  2 DESC
LIMIT
  10 