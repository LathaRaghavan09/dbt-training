SELECT customerid
FROM {{ ref('Customer') }}
where customerid is null
