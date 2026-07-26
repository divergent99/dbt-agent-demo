SELECT
    r.return_reason,
    p.product_category,
    r.return_id,
    r.order_id,
    r.customer_id,
    r.return_date,
    r.return_amount
FROM {{ ref('returns') }} r
LEFT JOIN {{ ref('products') }} p
    ON r.product_id = p.product_id
