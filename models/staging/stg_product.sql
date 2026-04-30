with source as (

    select *
    from {{ source('adventure_works', 'product') }}

),

renamed as (

    select
        cast(_c0 as int) as product_id,
        cast(_c1 as string) as product_name,
        cast(_c2 as string) as product_number,
        cast(_c3 as int) as make_flag,
        cast(_c4 as int) as finished_goods_flag,
        cast(_c5 as string) as color,
        cast(_c6 as int) as safety_stock_level,
        cast(_c7 as int) as reorder_point,
        cast(_c8 as double) as standard_cost,
        cast(_c9 as double) as list_price,
        cast(_c10 as string) as size,
        cast(_c11 as string) as size_unit_measure_code,
        cast(_c12 as string) as weight_unit_measure_code,
        cast(_c13 as double) as weight,
        cast(_c14 as int) as days_to_manufacture,
        cast(_c15 as string) as product_line,
        cast(_c16 as string) as class,
        cast(_c17 as string) as style,
        cast(_c18 as int) as product_subcategory_id,
        cast(_c19 as int) as product_model_id,
        cast(_c20 as timestamp) as sell_start_date,
        cast(_c21 as timestamp) as sell_end_date,
        cast(_c22 as timestamp) as discontinued_date,
        cast(_c23 as string) as rowguid,
        cast(_c24 as timestamp) as modified_date
    from source

)

select *
from renamed