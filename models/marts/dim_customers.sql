select
    customer_id,
    person_id,
    store_id,
    territory_id,
    account_number,
    customer_name,
    customer_type
from {{ ref('int_customers') }}