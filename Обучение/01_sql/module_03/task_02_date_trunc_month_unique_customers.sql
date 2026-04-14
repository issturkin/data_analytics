/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема:
DATE_TRUNC + COUNT(DISTINCT) + GROUP BY.

Рассчитывается:
- registration_month — месяц регистрации (без детализации по дню)
- unique_customers_count — количество уникальных клиентов в каждом месяце

Сортировка по убыванию месяца регистрации.
*/

-- УСЛОВИЕ:
-- Посчитать, сколько уникальных клиентов регистрировалось каждый месяц.
-- Поля: registration_month, unique_customers_count.
-- Отсортировать по месяцу регистрации по убыванию.

SELECT
    DATE_TRUNC('month', created_at) AS registration_month,
    COUNT(DISTINCT customer_id) AS unique_customers_count
FROM customers
GROUP BY registration_month
ORDER BY registration_month DESC
