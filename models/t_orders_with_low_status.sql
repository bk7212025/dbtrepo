{{
    config(
        materialized='table'
    )
}}

select * from MARKETING_DB.MARKETING_SCHEMA.t_orders where o_orderpriority='5-LOW' and o_orderstatus='O'
and date_part('YYYY',O_ORDERDATE)='1997'
and date_part('MM',O_ORDERDATE)='1'