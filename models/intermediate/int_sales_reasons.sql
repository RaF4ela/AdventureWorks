with sales_order_reasons as (

    select *
    from {{ ref('stg_sales_order_header_sales_reason') }}

),

reasons as (

    select *
    from {{ ref('stg_sales_reason') }}

),

joined as (

    select
        sor.sales_order_id,
        sor.sales_reason_id,
        r.reason_name,
        r.reason_type,
        sor.modified_date

    from sales_order_reasons sor
    left join reasons r
        on sor.sales_reason_id = r.sales_reason_id

)

select *
from joined