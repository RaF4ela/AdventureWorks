with source as (

    select *
    from {{ source('adventure_works', 'product_category') }}

),

renamed as (

    select
        cast(_c0 as int) as product_category_id,
        cast(_c1 as string) as name,
        cast(_c2 as string) as rowguid,
        cast(_c3 as timestamp) as modified_date
    from source

)

select *
from renamed