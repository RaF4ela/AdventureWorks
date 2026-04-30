with source as (

    select *
    from {{ source('adventure_works', 'credit_card') }}

),

renamed as (

    select
        cast(_c0 as int) as credit_card_id,
        cast(_c1 as string) as card_type,
        cast(_c2 as string) as card_number,
        cast(_c3 as int) as exp_month,
        cast(_c4 as int) as exp_year,
        cast(_c5 as timestamp) as modified_date
    from source

)

select *
from renamed