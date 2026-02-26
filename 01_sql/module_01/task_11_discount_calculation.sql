/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Задача:
Вывести:
1. ID продукта
2. Текущую цену продукта
3. Цену со скидкой 5%
4. Цену со скидкой 100 рублей

Требования:
- Округлить цены со скидкой вниз
- Отсортировать по убыванию ID продукта
- Затем по убыванию цены
- Использовать AS для названий столбцов

Поля результата:
product_id,
price,
price_5_perc_discount,
price_100_rub_discount
---------------------------------------------------------
*/

SELECT
    product_id,
    price,
    FLOOR(price - (price * 0.05)) AS price_5_perc_discount,
    FLOOR(price - 100) AS price_100_rub_discount
FROM order_items
ORDER BY product_id DESC, price DESC;