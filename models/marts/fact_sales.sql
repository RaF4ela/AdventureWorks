with sales as (

    select *
    from {{ ref('int_sales') }}

),

reasons as (

    select
        sales_order_id,
        min(sales_reason_id) as sales_reason_id
    from {{ ref('int_sales_reasons') }}
    group by sales_order_id

),

joined as (

    select
        s.sales_order_id,
        s.sales_order_detail_id,

        s.date_id,
        s.order_date,

        s.customer_id,
        s.product_id,
        s.address_id,

        s.sales_person_id,
        s.territory_id,
        s.status,

        s.order_qty,
        s.unit_price,
        s.unit_price_discount,

        -- MÉTRICAS 
        (s.unit_price * s.order_qty) as gross_amount,
        (s.unit_price * s.order_qty * s.unit_price_discount) as discount_amount,
        (s.unit_price * s.order_qty * (1 - s.unit_price_discount)) as net_amount,

        s.subtotal,
        s.tax_amount,
        s.freight_amount,
        s.total_due,

        s.credit_card_id,
        s.card_type,

        r.sales_reason_id,

        s.modified_date

    from sales s

    left join reasons r
        on s.sales_order_id = r.sales_order_id

)

select *
from joined