
select c_custkey,C_MKTSEGMENT,
{{case_macro("C_MKTSEGMENT")}} as derived_Value
from {{ source('s1', 'customers') }}