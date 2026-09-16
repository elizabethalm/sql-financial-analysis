SELECT
    order_id,
    payment_sequential AS sequence,
    payment_type AS payment_method,
    payment_installments AS installments,
    payment_value AS amount
FROM {{ source('olist', 'payments') }}