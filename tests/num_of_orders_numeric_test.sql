-- data type validation confirms that the data number_of_orders column is of the expected data type

SELECT *
 
from {{ ref('customers_orders_model') }} 

where not IS_INTEGER(NUMBER_OF_ORDERS)
