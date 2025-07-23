with orders as (
select
order_id as order_id,
customer_id as customer_id,
order_date,
status
from marketing_db.marketing_schema.orders
)
select * from orders