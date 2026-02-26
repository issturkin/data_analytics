/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Вывести:
1. Полное название продукта в формате:
   product_brand - product_category_name
   Назвать product_full_name_clean

2. Артикул товара:
   первые 3 символа бренда +
   длина названия категории
   Назвать product_number

3. Основную категорию товара:
   взять 1 часть строки product_category_name,
   разделённой по пробелу.
   Использовать функцию SPLIT_PART.
   Назвать main_category

Поля результата:
product_id,
product_full_name_clean,
product_number,
main_category
---------------------------------------------------------
*/

SELECT
    product_id,

    CONCAT(product_brand, ' - ', product_category_name)
        AS product_full_name_clean,

    CONCAT(
        SUBSTRING(product_brand, 1, 3),
        LENGTH(product_category_name)
    )
        AS product_number,

    SPLIT_PART(product_category_name, ' ', 1)
        AS main_category

FROM products;