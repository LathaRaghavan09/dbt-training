SELECT
        CUSTOMERID
    ,   CUSTOMERNAME
    ,   SEGMENT   
    ,   COUNTRY
    ,   STATE
    ,   SUM(ORDERS_PROFIT) AS CUSTOMER_PROFIT
FROM {{ ref('stg_orders') }}
GROUP BY ALL