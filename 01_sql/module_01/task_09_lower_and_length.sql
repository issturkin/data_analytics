/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Задача:
Вывести:
1. ID продукта
2. Название бренда в нижнем регистре (product_brand_lower)
3. Количество символов в названии бренда (length_brand)

Ограничить результат 10 строками.
Отсортировать по количеству символов в названии бренда
по возрастанию.

Поля результата:
product_id,
product_brand_lower,
length_brand
---------------------------------------------------------
*/

SELECT
    product_id,
    LOWER(product_brand) AS product_brand_lower,
    LENGTH(product_brand) AS length_brand
FROM products
ORDER BY length_brand ASC
LIMIT 10;