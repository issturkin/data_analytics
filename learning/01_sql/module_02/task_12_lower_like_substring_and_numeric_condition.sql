/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема:
LOWER + LIKE + числовое условие

Метод:
1. Регистронезависимый поиск через LOWER()
2. Поиск подстроки через LIKE '%...%'
3. Числовая фильтрация через >

Результат:
product_id,
product_brand,
product_category_name
---------------------------------------------------------
*/

SELECT
    product_id,
    product_brand,
    product_category_name
FROM
    products
WHERE
    LOWER(product_brand) LIKE '%фото%'
    AND product_weight_g > 500