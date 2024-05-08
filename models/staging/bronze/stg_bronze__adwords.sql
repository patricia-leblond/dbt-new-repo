with 

source as (

    select * from {{ source('bronze', 'adwords') }}

),

renamed as (

    select
        date_date,
        paid_source,
        campaign_key,
        campgn_name AS campaign_name,
        ads_cost,
        impression,
        click

    from source

)

select * from renamed
