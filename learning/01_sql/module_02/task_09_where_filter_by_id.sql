/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Задача (кратко, RU):
Вывести город (customer_city) клиента с customer_id = 229 из таблицы customers.

Тема:
Фильтрация WHERE по точному совпадению (=)

Результат:
customer_city
---------------------------------------------------------
*/

SELECT
    customer_city
FROM
    customers
WHERE
    customer_id = 229