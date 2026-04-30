with source as (

    select *
    from {{ source('adventure_works', 'sales_order_header_sales_reason') }}

),

renamed as (

    select
        cast(_c0 as int) as sales_order_id,
        cast(_c1 as int) as sales_reason_id,
        cast(_c2 as timestamp) as modified_date
    from source

)

select *
from renamed