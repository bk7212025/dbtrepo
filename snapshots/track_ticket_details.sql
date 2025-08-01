{% snapshot tracket_ticket_details %}
    {{
        config(
            target_schema='dbt_schema',
            strategy='check',
            unique_key='TICKET_ID',
            check_cols=['TICKET_STATUS']                        
        )
    }}

    select * from {{ ref('ticket_details') }}
 {% endsnapshot %}