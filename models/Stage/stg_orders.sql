SELECT 
 ---from orders
      O.ORDERID
    , O.ORDERDATE
    , O.SHIPDATE
    , O.SHIPMODE
    , O.ORDERCOSTPRICE
    , O.ORDERSELLINGPRICE
 ----from customer
    , C.CUSTOMERID
    , C.CUSTOMERNAME
    , C.SEGMENT   
    , C.COUNTRY
    , C.STATE
---from products
    , P.CATEGORY
    , P.PRODUCTID
    , P.PRODUCTNAME
    , P.SUBCATEGORY
    , (O.ORDERSELLINGPRICE - O.ORDERCOSTPRICE) AS ORDERS_PROFIT
FROM {{ ref('Orders') }} O
LEFT JOIN {{ ref('Customer') }} C
    ON O.CUSTOMERID = C.CUSTOMERID
LEFT JOIN {{ ref('Product') }} P
    ON O.PRODUCTID = P.PRODUCTID