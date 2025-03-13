SELECT
          PRODUCTID
    ,   PRODUCTNAME
    ,   CATEGORY
    ,   SUBCATEGORY
    ,  SUM(ORDERS_PROFIT) as PRODUCT_PROFIT
FROM {{ ref('stg_orders') }}
GROUP BY ALL