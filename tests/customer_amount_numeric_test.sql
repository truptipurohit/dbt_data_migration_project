-- data test use case for business rule validation
-- Amount must always be greater than or equal to zero
SELECT customer_id

FROM {{ ref('customers_orders_model') }}

WHERE customer_lifetime_value < 0
