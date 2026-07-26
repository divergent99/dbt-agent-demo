SELECT
    order_id,
    category_name,
    order_mode,
    MAX(order_total) AS order_total
FROM {{ ref('order_details') }}
GROUP BY
    order_id,
    category_name,
    order_mode
