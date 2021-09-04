with regions as (

    select
        r_regionkey as region_id,
        r_name as name
        

    from {{ source('tpch_sf001','region') }}
)

select * from regions

