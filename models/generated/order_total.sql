select
    order_id,
    category_name,
    order_mode,
    sum(order_total) as order_total
from {{ ref('order_details') }}
group by
    order_id,
    category_name,
    order_mode