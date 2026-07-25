SELECT
    order_id,
    category_name,
    order_mode,
    order_total
FROM {{ ref('order_details') }}
GROUP BY
    order_id,
    category_name,
    order_mode,
    order_total