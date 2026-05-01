with source as (

    select *
    from {{ source('adventure_works', 'sales_order_detail') }}

),

renamed as (

    select
        cast(_c0 as int) as sales_order_id,
        cast(_c1 as int) as sales_order_detail_id,
        cast(_c2 as string) as carrier_tracking_number,
        cast(_c3 as int) as order_qty,
        cast(_c4 as int) as product_id,
        cast(_c5 as int) as special_offer_id,
        cast(_c6 as double) as unit_price,
        cast(_c7 as double) as unit_price_discount,
        cast(_c8 as double) as line_total,
        cast(_c9 as string) as rowguid,
        cast(_c10 as timestamp) as modified_date
    from source

)

select *
from renamed