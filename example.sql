WITH last_year_orders AS (
    SELECT *
    FROM orders
    WHERE order_date >= CURRENT_DATE - INTERVAL '12 months'
),

customer_revenue AS (
    SELECT
        c.id AS customer_id,
        c.name AS customer_name,
        c.country,
        SUM(oi.quantity * oi.unit_price) AS total_spent,
        COUNT(DISTINCT o.id) AS total_orders,
        COUNT(oi.id) AS total_items,
        MAX(o.order_date) AS last_order_date
    FROM customers c
    JOIN last_year_orders o ON c.id = o.customer_id
    JOIN order_items oi ON o.id = oi.order_id
    GROUP BY c.id, c.name, c.country
),

ranked_na_customer_info AS (
    SELECT *,
           RANK() OVER (PARTITION BY country ORDER BY total_spent DESC) AS revenue_rank
    FROM customer_revenue
)

SELECT
    customer_name,
    country,
    total_spent,
    total_orders,
    total_items,
    last_order_date,
    CASE
        WHEN total_spent > 10000 THEN 'High Value'
        WHEN total_spent BETWEEN 5000 AND 10000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment
FROM ranked_na_customer_info
WHERE revenue_rank <= 5
ORDER BY customer_name;
