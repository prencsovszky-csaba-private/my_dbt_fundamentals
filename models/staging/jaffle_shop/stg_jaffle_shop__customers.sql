{#
{{
    config(materialized = 'table')
}}
#}

   select
        id as customer_id,
        first_name,
        last_name

--    from raw.jaffle_shop.customers
    from {{ source('jaffle_shop','raw_customers') }}