WITH count_orders_brand_moscow as (
  SELECT
    p.product_brand,
    COUNT(oi.order_item_id) as items_count
  FROM
    products p
    JOIN order_items oi ON p.product_id = oi.product_id
    JOIN orders o ON o.order_id = oi.order_id
    JOIN customers c ON c.customer_id = o.customer_id
  WHERE
    c.customer_city = 'Москва'
    AND p.product_brand IS NOT NULL
  GROUP BY
    p.product_brand
)
SELECT
  product_brand,
  items_count,
    ROUND(
      (items_count * 100.0 / SUM(items_count) OVER ()),
      2
    ) as brand_share_percent,
  DENSE_RANK() OVER(
    ORDER BY
      items_count DESC
  ) as brand_rank
FROM
  count_orders_brand_moscow
ORDER BY
  brand_rank