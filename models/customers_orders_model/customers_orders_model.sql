
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/
{{ config(materialized='table') }}

SELECT
    c.id as customer_id,
    c.first_name as first_name,
    c.last_name as last_name,
    min(o.order_date) as first_order,
    max(o.order_date) as last_order,
    count(distinct o.id) as number_of_orders,
    sum(p.amount) as customer_lifetime_value
FROM
    PGINGESTED_CUSTOMERS c
JOIN
     PGINGESTED_ORDERS o ON c.id = o.user_id
JOIN
    PGINGESTED_PAYMENTS p ON o.id = p.order_id
GROUP BY
    c.id, c.first_name, c.last_name     


/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
