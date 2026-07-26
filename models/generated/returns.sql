SELECT
    r.reason,
    p.category AS product_category,
    r.*
FROM returns r
LEFT JOIN products p
    ON r.product_id = p.product_id
