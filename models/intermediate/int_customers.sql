with customers as (

    select *
    from {{ ref('stg_customer') }}

),

persons as (

    select *
    from {{ ref('stg_person') }}

),

stores as (

    select *
    from {{ ref('stg_store') }}

),

joined as (

    select
        c.customer_id,
        c.person_id,
        c.store_id,
        c.territory_id,
        c.account_number,

        p.first_name,
        p.middle_name,
        p.last_name,
        s.store_name,

        case
            when c.person_id is not null then concat_ws(' ', p.first_name, p.middle_name, p.last_name)
            when c.store_id is not null then s.store_name
            else 'Unknown'
        end as customer_name,

        case
            when c.person_id is not null then 'Person'
            when c.store_id is not null then 'Store'
            else 'Unknown'
        end as customer_type,

        c.modified_date

    from customers c

    left join persons p
        on c.person_id = p.business_entity_id

    left join stores s
        on c.store_id = s.business_entity_id

)

select *
from joined