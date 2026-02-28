/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема:
DATE_PART + вычисление разницы дат

Метод:
1. Извлечение частей даты (day, month, year)
2. Расчет количества дней с момента регистрации

Поля результата:
customer_id,
customer_city,
day_created_at,
month_created_at,
year_created_at,
register_days_ago
---------------------------------------------------------
*/

SELECT
    customer_id,
    customer_city,
    DATE_PART('day', created_at) AS day_created_at,
    DATE_PART('month', created_at) AS month_created_at,
    DATE_PART('year', created_at) AS year_created_at,
    DATE_PART('day', NOW() - created_at) AS register_days_ago
FROM
    customers