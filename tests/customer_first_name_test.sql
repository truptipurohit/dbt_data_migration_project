-- completeness check to make sure columns are not missing any values

SELECT *

FROM {{ ref('customers') }}

WHERE last_name is null or len(first_name)=0
