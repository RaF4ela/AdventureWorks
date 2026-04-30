select distinct
    sales_reason_id,
    reason_name,
    reason_type
from {{ ref('int_sales_reasons') }}
where sales_reason_id is not null