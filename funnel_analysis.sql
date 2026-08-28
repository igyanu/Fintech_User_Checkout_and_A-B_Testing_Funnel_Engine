use project;

WITH user_funnel AS(
SELECT customerid,
MAX(CASE WHEN event = "page_visit" THEN 1 ELSE 0 END) AS "page_visit",
MAX(CASE WHEN event = "product_view" THEN 1 ELSE 0 END) AS "product_view",
MAX(CASE WHEN event = "add_to_cart" THEN 1 ELSE 0 END) AS "add_to_cart",
MAX(CASE WHEN event = "checkout_initiated" THEN 1 ELSE 0 END) AS "checkout",
MAX(CASE WHEN event = "payment" THEN 1 ELSE 0 END) AS "payment"
FROM funnel GROUP BY customerid
),

stage_funnel AS(
SELECT SUM(page_visit) as "visitors",
 SUM(CASE WHEN page_visit = 1 AND product_view = 1 THEN 1 ELSE 0 END ) AS "product_views",
 SUM(CASE WHEN page_visit = 1 AND product_view = 1 AND add_to_cart = 1 THEN 1 ELSE 0 END ) AS "add_to_cart",
 SUM(CASE WHEN page_visit = 1 AND product_view = 1 AND add_to_cart = 1 AND checkout = 1 THEN 1 ELSE 0 END ) AS "checkout",
 SUM(CASE WHEN page_visit = 1 AND product_view = 1 AND add_to_cart = 1 AND checkout = 1 and payment = 1 THEN 1 ELSE 0 END ) AS "payment"
 FROM user_funnel
 )
 
SELECT visitors, product_views, add_to_cart, checkout, payment,
round(product_views * 100 / visitors, 2) as 'visit_to_product_view_%',
round(add_to_cart * 100 / product_views, 2) as 'view_to_cart_%',
round(checkout * 100 / add_to_cart, 2) as 'cart_to_checkout_%',
round(payment * 100 / checkout, 2) as 'checkout_to_payment_%'
from stage_funnel;
 