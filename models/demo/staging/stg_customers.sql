with customers as (

    select
        c_custkey as customer_id,
        c_name as name,
        c_mktsegment as marketing_segment,
        c_phone as phone,
        c_nationkey as nation_id,
        c_acctbal as account_balance

    from {{ source('tpch_sf001','customer') }}
    
)


select * from customers