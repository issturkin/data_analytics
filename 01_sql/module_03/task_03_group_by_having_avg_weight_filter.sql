/*
Тема:
GROUP BY + HAVING + агрегатная фильтрация.

Рассчитывается:
- avg_weight_g — средний вес товара по бренду

Отбираются бренды:
- со средним весом < 200 г
- или со средним весом > 400 г

Сортировка по убыванию среднего веса.
*/

-- УСЛОВИЕ:
-- Найти бренды (product_brand) и их средний вес (avg_weight_g),
-- если средний вес меньше 200 грамм или больше 400 грамм.
-- Отсортировать по убыванию среднего веса.
-- Поля: product_brand, avg_weight_g.

SELECT
    product_brand,
    AVG(product_weight_g) AS avg_weight_g
FROM products
GROUP BY product_brand
HAVING
    AVG(product_weight_g) < 200
    OR AVG(product_weight_g) > 400
ORDER BY AVG(product_weight_g) DESC
;