with addresses as (

    select *
    from {{ ref('stg_address') }}

),

states as (

    select *
    from {{ ref('stg_state_province') }}

),

countries as (

    select *
    from {{ ref('stg_country_region') }}

),

joined as (

    select
        a.address_id,
        a.address_line1,
        a.city,
        a.state_province_id,
        sp.state_name,
        sp.state_code,
        sp.country_region_code,
        cr.country_name,
        a.postal_code,
        a.modified_date

    from addresses a
    left join states sp
        on a.state_province_id = sp.state_province_id
    left join countries cr
        on sp.country_region_code = cr.country_region_code

)

select *
from joined