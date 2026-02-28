/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема:
CASE + COALESCE + приведение типа

Метод:
1. Условная логика через CASE
2. Обработка NULL через COALESCE
3. Приведение числового поля к строке (::VARCHAR)

Результат:
customer_id,
customer_zip_code,
customer_city,
destination
---------------------------------------------------------
*/

SELECT
    customer_id,
    customer_zip_code,
    customer_city,
    CASE
        WHEN customer_city IS NOT NULL THEN customer_city
        WHEN customer_city IS NULL THEN COALESCE(customer_city, customer_zip_code :: VARCHAR)
    END AS destination
FROM
    customers