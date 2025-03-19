SELECT customerid, count(*)
FROM {{ ref('Customer') }}
group by customerid
having count(*) > 1
