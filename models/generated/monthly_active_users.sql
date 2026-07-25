SELECT
    DATE_TRUNC('month', event_date) AS activity_month,
    plan_tier,
    COUNT(DISTINCT user_id) AS monthly_active_users
FROM users
JOIN events USING (user_id)
GROUP BY 1, 2
ORDER BY 1, 2