with source as (

    select *
    from {{ source('adventure_works', 'country_region') }}

),

renamed as (

    select
        cast(_c0 as string) as country_region_code,
        cast(_c1 as string) as country_name,
        cast(_c2 as timestamp) as modified_date
    from source

)

select *
from renamed