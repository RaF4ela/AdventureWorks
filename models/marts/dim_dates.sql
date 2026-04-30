with dates as (

    select distinct
        cast(order_date as date) as full_date
    from {{ ref('int_sales') }}

)

select
    date_format(full_date, 'yyyyMMdd') as date_id,
    full_date,
    day(full_date) as day,
    month(full_date) as month,
    year(full_date) as year,
    quarter(full_date) as quarter,
    date_format(full_date, 'MMMM') as month_name,
    date_format(full_date, 'yyyy-MM') as month_year
from dates