SELECT
    r.return_reason,
    p.product_category,
    COUNT(*) AS return_count
FROM {{ ref('returns_refunds') }} r
LEFT JOIN {{ ref('products') }} p
    ON r.product_id = p.product_id
GROUP BY
    r.return_reason,
    p.product_category
