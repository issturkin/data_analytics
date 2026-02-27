/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Задача:
Вывести всех клиентов, зарегистрировавшихся
после 1 февраля 2024 года включительно.

Поля результата:
customer_id,
customer_zip_code,
customer_city,
created_at
---------------------------------------------------------
*/

SELECT
    customer_id,
    customer_zip_code,
    customer_city,
    created_at
FROM
    customers
WHERE created_at >= '2024-02-01'