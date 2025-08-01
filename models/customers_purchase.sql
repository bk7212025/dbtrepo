select c.c_custkey,c.c_name,c_nationkey,
sum(O_TOTALPRICE) as total_ordered_price
from {{ source('s1', 'customers') }} c
left join {{ source('s1', 'orders') }} o 
on C_CUSTKEY=O_CUSTKEY
{{group_by(3)}}