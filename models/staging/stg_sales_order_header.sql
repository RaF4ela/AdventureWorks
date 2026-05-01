with source as (

    select *
    from {{ source('adventure_works', 'sales_order_header') }}

),

renamed as (

    select
        cast(_c0 as int) as sales_order_id,
        cast(_c1 as int) as revision_number,
        cast(_c2 as timestamp) as order_date,
        cast(_c3 as timestamp) as due_date,
        cast(_c4 as timestamp) as ship_date,
        cast(_c5 as int) as status,
        cast(_c6 as int) as online_order_flag,
        cast(_c7 as string) as sales_order_number,
        cast(_c8 as string) as purchase_order_number,
        cast(_c9 as string) as account_number,
        cast(_c10 as int) as customer_id,
        cast(_c11 as int) as sales_person_id,
        cast(_c12 as int) as territory_id,
        cast(_c13 as int) as bill_to_address_id,
        cast(_c14 as int) as ship_to_address_id,
        cast(_c15 as int) as ship_method_id,
        cast(_c16 as int) as credit_card_id,
        cast(_c17 as string) as credit_card_approval_code,
        cast(_c18 as int) as currency_rate_id,
        cast(_c19 as double) as subtotal,
        cast(_c20 as double) as tax_amount,
        cast(_c21 as double) as freight_amount,
        cast(_c22 as double) as total_due,
        cast(_c23 as string) as comment,
        cast(_c24 as string) as rowguid,
        cast(_c25 as timestamp) as modified_date
    from source

)

select *
from renamed