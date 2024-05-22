-- data test use case for business rule validation
-- Amount must always be greater than or equal to zero
SELECT customer_id

FROM {{ ref('customers') }}

WHERE customer_lifetime_value < 0
