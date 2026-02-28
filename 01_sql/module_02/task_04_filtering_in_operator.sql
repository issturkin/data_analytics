/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема:
Фильтрация с использованием оператора IN

Метод:
WHERE column IN (value1, value2, value3)

Позволяет отфильтровать записи по списку значений.

Поля результата:
product_id, product_brand, product_category_name
---------------------------------------------------------
*/

SELECT
    product_id,
    product_brand,
    product_category_name
FROM
    products
WHERE
    product_category_name IN ('Электроника', 'Одежда', 'Сад')