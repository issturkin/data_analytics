/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема:
Проверка NULL значений

Метод:
Фильтрация строк с NULL через IS NULL

Результат:
customer_id
---------------------------------------------------------
*/

SELECT
    customer_id
FROM
    customers
WHERE
    customer_city IS NULL