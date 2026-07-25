SELECT
    order_id,
    delivery_type,
    cost_of_delivery
FROM {{ ref('orders') }}
