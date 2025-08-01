{% macro case_macro(column_name) %}
    CASE 
        WHEN {{ column_name }} IN ('BUILDING', 'HOUSEHOLD') THEN 'House related'
        ELSE 'others'
    END
{% endmacro %}