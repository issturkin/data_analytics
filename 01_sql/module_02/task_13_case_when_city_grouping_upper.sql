/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics


Тема: CASE WHEN для логической группировки + UPPER() для изменения регистра.

Формируется:
- city_upper — город в верхнем регистре
- region_group — группировка:
  "Столица" для Москва и Санкт-Петербург,
  "Другие" для остальных
*/

SELECT customer_id,
    upper(customer_city) as city_upper,
    case when customer_city = 'Москва' or
        customer_city = 'Санкт-Петербург' then 'Столица'
        else 'Другие' end as region_group
FROM customers
