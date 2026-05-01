with orders as (

    select *
    from {{ ref('stg_sales_order_header') }}

),

order_details as (

    select *
    from {{ ref('stg_sales_order_detail') }}

),

cards as (

    select *
    from {{ ref('stg_credit_card') }}

),

joined as (

    select
        o.sales_order_id,
        od.sales_order_detail_id,

        date_format(o.order_date, 'yyyyMMdd') as date_id,
        o.order_date,

        o.customer_id,
        o.ship_to_address_id as address_id,
        o.sales_person_id,
        o.territory_id,
        o.status,
        o.credit_card_id,

        od.product_id,
        od.order_qty,
        od.unit_price,
        od.unit_price_discount,
        od.line_total,

        c.card_type,

        o.subtotal,
        o.tax_amount,
        o.freight_amount,
        o.total_due,

        o.modified_date

    from orders o

    left join order_details od
        on o.sales_order_id = od.sales_order_id

    left join cards c
        on o.credit_card_id = c.credit_card_id

)

select *
from joined