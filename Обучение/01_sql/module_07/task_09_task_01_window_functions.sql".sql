/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема: Оконные функции и агрегатные функции
Условие: Для каждого товара в заказе необходимо рассчитать, насколько его цена отличается от средней 
цены всех товаров в его категории avg_category_price, а также от средней цены всех товаров того же 
бренда avg_brand_price. Это поможет выявлять премиальные или, наоборот, бюджетные товары. 
Отличия назовите, соответственно, category_price_delta и brand_price_delta.

Результат отсортируйте по возрастанию product_id, product_category_name, price, category_price_delta.
*/

WITH t1 as (
  SELECT
    oi.product_id,
    p.product_category_name,
    p.product_brand,
    oi.price,
    AVG(oi.price) OVER(PARTITION BY p.product_category_name) as avg_category_price,
    AVG(oi.price) OVER(PARTITION BY p.product_brand) as avg_brand_price
  FROM
    order_items oi
    JOIN products p ON oi.product_id = p.product_id
  ORDER BY
    product_id,
    product_category_name,
    price
)
SELECT DISTINCT
  product_id,
  product_category_name,
  product_brand,
  price,
  avg_category_price,
  avg_brand_price,
  (price - avg_category_price) as category_price_delta,
  (price - avg_brand_price) as brand_price_delta
from
  t1
ORDER BY
  product_id,
  product_category_name,
  price,
  category_price_delta;
