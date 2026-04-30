select
    product_id,
    product_name,
    product_number,
    color,
    standard_cost,
    list_price,
    product_subcategory_id,
    subcategory_name,
    product_category_id,
    category_name
from {{ ref('int_products') }}