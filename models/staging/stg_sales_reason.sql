with source as (

    select *
    from {{ source('adventure_works', 'sales_reason') }}

),

renamed as (

    select
        cast(_c0 as int) as sales_reason_id,
        cast(_c1 as string) as reason_name,
        cast(_c2 as string) as reason_type,
        cast(_c3 as timestamp) as modified_date
    from source

)

select *
from renamed