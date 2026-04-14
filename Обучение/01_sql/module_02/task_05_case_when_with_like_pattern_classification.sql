/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема:
CASE WHEN + LIKE + LOWER

Метод:
Условная классификация значений через CASE
с использованием регистронезависимого поиска.

Поля результата:
product_id, product_brand, category
---------------------------------------------------------
*/

SELECT
    product_id,
    LOWER(product_brand) AS product_brand,
    CASE
        WHEN LOWER(product_brand) LIKE '%фото%' THEN 'Фото'
        WHEN LOWER(product_brand) LIKE '%техно%' OR LOWER(product_brand) LIKE '%квант%' THEN 'Техно'
        WHEN LOWER(product_brand) LIKE '%энерго%' THEN 'Энерго'
        ELSE 'Другое'
    END AS category
FROM
    products