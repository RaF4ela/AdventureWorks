with source as (

    select *
    from {{ source('adventure_works', 'address') }}

),

renamed as (

    select
        cast(_c0 as int) as address_id,
        cast(_c1 as string) as address_line1,
        cast(_c3 as string) as city,
        cast(_c4 as int) as state_province_id,
        cast(_c5 as string) as postal_code,
        cast(_c6 as string) as spatial_location,
        cast(_c7 as string) as rowguid,
        cast(_c8 as timestamp) as modified_date
    from source

)

select *
from renamed