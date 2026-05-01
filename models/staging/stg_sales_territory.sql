with source as (

    select *
    from {{ source('adventure_works', 'sales_territory') }}

),

renamed as (

    select
        cast(_c0 as int) as territory_id,
        cast(_c1 as string) as territory_name,
        cast(_c2 as string) as country_region_code,
        cast(_c3 as string) as territory_group,
        cast(_c4 as double) as sales_ytd,
        cast(_c5 as double) as sales_last_year,
        cast(_c6 as int) as cost_ytd,
        cast(_c7 as int) as cost_last_year,
        cast(_c8 as string) as rowguid,
        cast(_c9 as timestamp) as modified_date
    from source

)

select *
from renamed