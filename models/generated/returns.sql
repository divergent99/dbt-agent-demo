SELECT
    r.reason,
    p.category AS product_category,
    r.*
FROM returns r
LEFT JOIN order_items oi
    ON r.order_item_id = oi.id
LEFT JOIN products p
    ON oi.product_id = p.id
