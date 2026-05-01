select
    1
from (

    select
        sum(gross_amount) as total_2011
    from {{ ref('fact_sales') }}
    where order_date between '2011-01-01' and '2011-12-31'

) t
where abs(total_2011 - 12646112.16) >= 0.01