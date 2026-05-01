with products as (

    select *
    from {{ ref('stg_product') }}

),

subcategories as (

    select *
    from {{ ref('stg_product_subcategory') }}

),

categories as (

    select *
    from {{ ref('stg_product_category') }}

),

joined as (

    select
        p.product_id,
        p.product_name,
        p.product_number,
        p.color,
        p.standard_cost,
        p.list_price,
        p.product_subcategory_id,

        sc.name as subcategory_name,
        sc.product_category_id,

        c.name as category_name,

        p.modified_date

    from products p
    left join subcategories sc
        on p.product_subcategory_id = sc.product_subcategory_id
    left join categories c
        on sc.product_category_id = c.product_category_id

)

select *
from joined