-- Refunds have a negative amount, so the total amount shuold always be > 0.
select
         order_id
        ,sum(amount) as total_amount
    from {{ ref('stg_stripe__payments') }}
    group by order_id
    having sum(amount) < 0