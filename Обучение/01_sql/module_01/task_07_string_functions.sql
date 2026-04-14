/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Задача:
Вывести:
1. Идентификатор продукта
2. Полное название продукта в формате:
   product_brand - product_category_name
3. Артикул товара:
   бренд в ВЕРХНЕМ регистре + длина названия категории

Поля результата:
product_id, product_full_name, product_number
---------------------------------------------------------
*/

SELECT
    product_id,
    CONCAT(product_brand, ' - ', product_category_name) AS product_full_name,
    CONCAT(
        UPPER(product_brand), '', LENGTH(product_category_name)
    ) AS product_number
FROM products;