with source as (

    select *
    from {{ source('adventure_works', 'sales_person') }}

),

renamed as (

    select
        cast(_c0 as int) as business_entity_id,
        cast(_c1 as int) as territory_id,
        cast(_c2 as double) as sales_quota,
        cast(_c3 as double) as bonus,
        cast(_c4 as double) as commission_pct,
        cast(_c5 as double) as sales_ytd,
        cast(_c6 as double) as sales_last_year,
        cast(_c7 as string) as rowguid,
        cast(_c8 as timestamp) as modified_date
    from source

)

select *
from renamed