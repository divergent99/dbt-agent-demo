select
    delivery_type,
    order_id,
    cost_of_delivery
from {{ ref('orders') }}
