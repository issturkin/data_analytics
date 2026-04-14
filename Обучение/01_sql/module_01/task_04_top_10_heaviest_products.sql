/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics
Задача:
Найти топ-10 самых тяжёлых продуктов по полю product_weight_g.
Вывести:
- product_id
- product_weight_g
- product_category_name

Требование:
Отсортировать по убыванию веса и ограничить результат 10 строками.
*/

-- Выбираем нужные столбцы
SELECT
    product_id,
    product_weight_g,
    product_category_name
FROM products

-- Сортируем по весу по убыванию (самые тяжёлые сверху)
ORDER BY product_weight_g DESC

-- Ограничиваем результат 10 строками
LIMIT 10;