

with customers as (

    select * from {{ ref('stg_customers') }}

),

nations as (

    select * from {{ ref('stg_nations') }}
    
),

regions as (

    select * from {{ ref('stg_regions') }}
    
)


select 

    customers.customer_id,
    customers.name,
    customers.marketing_segment,
    customers.phone,
    nations.name as nation,
    regions.name as region
    customer.account_balance,
    
 from customers
 left join nations using (nation_id)
 left join regions using (region_id)
-- left join customer_accounts on customers as customer_accounts.customer_id = customers.customer_id



