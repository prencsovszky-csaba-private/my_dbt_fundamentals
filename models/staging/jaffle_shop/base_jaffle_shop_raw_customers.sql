with source as (
        select * from {{ source('jaffle_shop', 'raw_customers') }}
  ),
  renamed as (
      select
          {{ adapter.quote("ID") }},
        {{ adapter.quote("FIRST_NAME") }},
        {{ adapter.quote("LAST_NAME") }}

      from source
  )
  select * from renamed
    