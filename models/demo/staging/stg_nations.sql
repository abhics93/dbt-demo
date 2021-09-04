with nations as (

    select
        n_nationkey as nation_id,
        n_regionkey as region_id,
        n_name as name
        

    from {{ source('tpch_sf001','nation') }}
)

select * from nations