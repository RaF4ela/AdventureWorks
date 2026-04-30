with source as (

    select *
    from {{ source('adventure_works', 'state_province') }}

),

renamed as (

    select
        cast(_c0 as int) as state_province_id,
        cast(_c1 as string) as state_code,
        cast(_c2 as string) as country_region_code,
        cast(_c3 as int) as is_only_state_province_flag,
        cast(_c4 as string) as state_name,
        cast(_c5 as int) as territory_id,
        cast(_c6 as string) as rowguid,
        cast(_c7 as timestamp) as modified_date
    from source

)

select *
from renamed