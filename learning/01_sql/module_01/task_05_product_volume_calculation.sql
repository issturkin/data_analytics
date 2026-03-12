/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics
Задача:
Подготовить отчёт по всем товарам.

Для каждого товара вывести:
1. product_id
2. Длину (product_length_cm → length_cm)
3. Ширину (product_width_cm → width_cm)
4. Высоту (product_height_cm → height_cm)
5. Объём товара в кубических метрах.

Объём рассчитывается как:
(product_length_cm * product_width_cm * product_height_cm) / 1 000 000.0

Важно:
Делить на 1000000.0 (с плавающей точкой), чтобы избежать целочисленного деления.

Поля результирующей таблицы:
product_id,
length_cm,
width_cm,
height_cm,
volume_m3
*/

SELECT
    product_id,

    -- Переименование столбцов
    product_length_cm AS length_cm,
    product_width_cm  AS width_cm,
    product_height_cm AS height_cm,

    -- Расчёт объёма в м³
    (
        product_length_cm
        * product_width_cm
        * product_height_cm
    ) / 1000000.0 AS volume_m3

FROM products;

