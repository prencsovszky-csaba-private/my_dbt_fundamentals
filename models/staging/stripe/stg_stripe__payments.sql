select
    id          as payment_id,
    order_id,
    payment_method,
    status,
 --   amount / 100 as amount,
    {{ cents_to_dollars('amount', 4) }} as amount,
    cast(created as date) as created_at
from {{ source ('stripe','raw_payments') }}

