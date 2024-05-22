-- data type validation confirms that data in customer_id column is of the expected data type.

SELECT customer_id

FROM {{ ref('customers') }}

WHERE customer_id < 0
