with customers as (
select
customer_id as customer_id,
first_name,
last_name
from marketing_db.marketing_schema.customers
)
select * from customers