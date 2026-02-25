/*
Задача:
Написать SQL-запрос, который выводит все столбцы таблицы products,
отсортировав результат:

1) по product_id по возрастанию
2) при одинаковом product_id — по product_brand по убыванию

Поля результирующей таблицы:
product_id,
product_brand,
product_category_name,
product_height_cm,
product_length_cm,
product_width_cm,
product_weight_g
*/

-- Выбираем все столбцы таблицы products
SELECT *
FROM products

-- Сортировка:
-- 1. product_id по возрастанию (ASC — по умолчанию, но указываем явно)
-- 2. product_brand по убыванию (DESC)
ORDER BY product_id ASC,
         product_brand DESC;