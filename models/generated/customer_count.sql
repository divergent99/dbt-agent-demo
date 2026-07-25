select
    billing_region as region,
    count(distinct customer_id) as customer_count
from {{ ref('order_details') }}
group by billing_region
