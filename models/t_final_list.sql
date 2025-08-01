with customers as (
select
customer_id as customer_id,
first_name,
last_name
from marketing_db.marketing_schema.customers
),
orders as (
select
order_id as order_id,
customer_id as customer_id,
order_date,
status
from marketing_db.marketing_schema.orders
),
customer_orders as (
select
customer_id,
min(order_date) as first_order_date,
max(order_date) as most_recent_order_date,
count(*) as number_of_orders
from marketing_db.marketing_schema.orders
group by 1
),
final as (
select
customers.customer_id,
customers.first_name,
customers.last_name,
customer_orders.first_order_date, customer_orders.most_recent_order_date,
coalesce (customer_orders.number_of_orders, 0) as number_of_orders
from customers
left join customer_orders on customers.customer_id=customer_orders.customer_id
)
select * from final