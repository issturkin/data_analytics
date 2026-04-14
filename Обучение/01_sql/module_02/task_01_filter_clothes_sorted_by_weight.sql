/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Задача:
Вывести все столбцы таблицы products.
Вернуть только продукты из категории «Одежда».
Отсортировать результат по весу по убыванию.

Поля результата:
product_id,
product_brand,
product_category_name,
product_height_cm,
product_length_cm,
product_width_cm,
product_weight_g
---------------------------------------------------------
*/

SELECT
    *
FROM
    products
WHERE
    product_category_name = 'Одежда'
ORDER BY
    product_weight_g DESC