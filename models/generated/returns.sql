with returns_data as (
    select
        return_reason,
        product_category,
        return_id,
        return_date,
        refund_amount,
        order_id,
        customer_id
    from {{ ref('Returns & Refunds') }}
)

select
    return_reason,
    product_category,
    count(*) as total_returns,
    sum(refund_amount) as total_refund_amount
from returns_data
group by
    return_reason,
    product_category
