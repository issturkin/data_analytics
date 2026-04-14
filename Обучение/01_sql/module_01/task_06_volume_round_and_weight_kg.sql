/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Задача:
Продолжить формирование отчёта по товарам.

Вывести:
1. product_id
2. product_length_cm  → length_cm
3. product_width_cm   → width_cm
4. product_height_cm  → height_cm
5. Объём в м³, округлённый до 1 знака после запятой → round_volume_m3
6. Вес в килограммах, округлённый вверх → product_weight_kg

Важно:
- Деление выполнять с дробной частью (1000000.0 и 1000.0),
  чтобы избежать целочисленного деления.
*/

SELECT
    product_id,

    product_length_cm AS length_cm,
    product_width_cm  AS width_cm,
    product_height_cm AS height_cm,

    -- Объём в м³ с округлением до 1 знака
    ROUND(
        (
            product_length_cm
            * product_width_cm
            * product_height_cm
        ) / 1000000.0,
        1
    ) AS round_volume_m3,

    -- Перевод граммов в килограммы и округление вверх
    CEIL(product_weight_g / 1000.0) AS product_weight_kg

FROM products;