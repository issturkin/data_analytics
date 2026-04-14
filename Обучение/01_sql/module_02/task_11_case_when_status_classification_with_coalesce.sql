/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics
Тема: CASE WHEN + COALESCE + фильтрация по диапазону дат

Метод:
1. Классификация статуса через CASE
2. Подстановка значения по умолчанию через COALESCE
3. Фильтрация по диапазону дат (BETWEEN)

Результат:
order_id,
status_order,
order_delivered_customer_time
---------------------------------------------------------
*/

SELECT
    order_id,
    CASE
        WHEN order_estimated_delivery_time >= order_delivered_customer_time THEN 'вовремя'
        WHEN order_estimated_delivery_time < order_delivered_customer_time THEN 'опоздал'
        ELSE 'остальные случаи'
    END AS status_order,
    COALESCE(order_delivered_customer_time, '2050-01-01') AS order_delivered_customer_time
FROM
    orders
WHERE order_created_time BETWEEN '2024-01-15' AND '2024-03-03'
