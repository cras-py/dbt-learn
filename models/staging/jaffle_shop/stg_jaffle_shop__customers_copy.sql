with 

source as (

    select * from {{ source('jaffle_shop', 'customers_copy') }}

),

renamed as (

    select
        id,
        first_name,
        last_name

    from source

)

select * from renamed
