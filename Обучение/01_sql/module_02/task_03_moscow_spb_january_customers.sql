/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Задача:
Вывести ID клиентов из Москвы или Санкт-Петербурга,
которые были зарегистрированы в январе.

Поля результата:
customer_id
---------------------------------------------------------
*/

SELECT
    customer_id
FROM
    customers
WHERE
(
    LOWER(customer_city) = 'москва'
    OR LOWER(customer_city) = 'санкт-петербург'
)
AND DATE_PART('month', created_at) = 1