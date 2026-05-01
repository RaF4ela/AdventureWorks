with source as (

    select *
    from {{ source('adventure_works', 'store') }}

),

renamed as (

    select
        cast(_c0 as int) as business_entity_id,
        cast(_c1 as string) as store_name,
        cast(_c2 as int) as sales_person_id,
        cast(_c3 as string) as demographics,
        cast(_c4 as string) as rowguid,
        cast(_c5 as timestamp) as modified_date
    from source

)

select *
from renamed