select
    order_id,
    delivery_type,
    cost_of_delivery
from {{ ref('orders') }}
