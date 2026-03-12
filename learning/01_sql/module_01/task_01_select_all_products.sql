-- /*
--Курс: Karpov.Courses — Аналитика данных
--https://karpov.courses/analytics
--Task 01: Вывести все данные из таблицы products
-- ------------------------------------------------------------
-- Условие:
-- Необходимо написать SQL-запрос, который выводит
-- все столбцы и все строки из таблицы products.
--
-- Ожидаемые поля:
-- product_id,
-- product_brand,
-- product_category_name,
-- product_height_cm,
-- product_length_cm,
-- product_width_cm,
-- product_weight_g
--
-- Подход к решению:
-- Используем SELECT * для получения всех столбцов
-- без явного перечисления каждого поля.
-- ------------------------------------------------------------

SELECT *
FROM products;