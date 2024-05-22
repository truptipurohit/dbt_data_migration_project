-- Verify all customer records are present in the model file.

with orders_model as (
    select
        customer_id,
    from
        {{ ref('customers') }}
),
customers as (
    select
        id
    from
        {{ ref('customers_view') }}
)
select
    customer_id
from
    orders_model
where
    orders_model.customer_id not in (select id from customers)
