select
    p_category as product_category,
    order_mode,
    sum(order_total) as order_total
from {{ ref('order_details') }}
group by
    p_category,
    order_mode