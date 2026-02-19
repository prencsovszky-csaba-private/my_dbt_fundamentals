   select
        id as customer_id,
        first_name,
        last_name

--    from raw.jaffle_shop.customers
    from {{ ref('raw_customers') }}
