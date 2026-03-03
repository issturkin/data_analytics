/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема:
SELECT + DISTINCT + ORDER BY.

Условие:
Получить уникальные сочетания бренда и категории товаров.
Сортировка по бренду в порядке убывания.
*/

SELECT
  DISTINCT product_brand,
  product_category_name
FROM
  products
ORDER BY
  product_brand DESC