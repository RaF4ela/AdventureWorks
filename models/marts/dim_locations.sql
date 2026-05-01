select
    address_id,
    address_line1,
    city,
    state_province_id,
    state_name,
    state_code,
    country_region_code,
    country_name,
    postal_code
from {{ ref('int_locations') }}