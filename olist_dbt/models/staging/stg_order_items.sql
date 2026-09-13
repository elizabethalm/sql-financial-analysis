SELECT 
    order_id AS order,
    order_item_id AS order_item,
    product_id AS product,
    seller_id  AS seller,
    shipping_limit_date,
    price,
    freight_value
FROM order_items