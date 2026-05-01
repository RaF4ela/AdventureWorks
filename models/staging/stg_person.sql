with source as (

    select *
    from {{ source('adventure_works', 'person') }}

),

renamed as (

    select
        cast(_c0 as int) as business_entity_id,
        cast(_c1 as string) as person_type,
        cast(_c2 as int) as name_style,
        cast(_c3 as string) as title,
        cast(_c4 as string) as first_name,
        cast(_c5 as string) as middle_name,
        cast(_c6 as string) as last_name,
        cast(_c7 as string) as suffix,
        cast(_c8 as int) as email_promotion,
        cast(_c9 as string) as additional_contact_info,
        cast(_c10 as string) as demographics,
        cast(_c11 as string) as rowguid,
        cast(_c12 as timestamp) as modified_date
    from source

)

select *
from renamed