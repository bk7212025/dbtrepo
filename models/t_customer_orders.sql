with customer_orders as (
select
customer_id,
min(order_date) as first_order_date,
max(order_date) as most_recent_order_date,
count(*) as number_of_orders
from marketing_db.marketing_schema.orders
group by 1
)
select * From customer_orders
order by customer_id