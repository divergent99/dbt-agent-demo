select
    order_id,
    category_name,
    order_mode,
    order_total
from {{ ref('order_details') }}
