with source as (

    select *
    from {{ source('adventure_works', 'customer') }}

),

renamed as (

    select
        cast(_c0 as int) as customer_id,
        cast(_c1 as int) as person_id,
        cast(_c2 as int) as store_id,
        cast(_c3 as int) as territory_id,
        cast(_c4 as string) as account_number,
        cast(_c5 as string) as rowguid,
        cast(_c6 as timestamp) as modified_date
    from source

)

select *
from renamed