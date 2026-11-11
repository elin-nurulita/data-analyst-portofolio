
-- =====================================================
-- SALES PERFORMANCE BY PIC
-- =====================================================

WITH data_chat AS (
    SELECT
        Pic,
        `Discussion id`,
        `Application number`,
        `Fu category`
    FROM `portfolio-473815.motocycle.chat_clean`
),

-- OVERALL SALES KPI
total_kpi AS (
    SELECT
        'ALL SALES' AS Pic,
        COUNT(DISTINCT `Discussion id`) AS `Total Chat`,
        COUNT(DISTINCT `Application number`) AS `Total Pesanan`,
        COUNT(DISTINCT IF(
            `Fu category` != 'Tidak Respon',
            `Discussion id`,
            NULL
        )) AS `Chat Respon`
    FROM data_chat
),

-- SALES KPI BY PIC
kpi_sales AS (
    SELECT
        Pic,
        COUNT(DISTINCT `Discussion id`) AS `Total Chat`,
        COUNT(DISTINCT `Application number`) AS `Total Pesanan`,
        COUNT(DISTINCT IF(
            `Fu category` != 'Tidak Respon',
            `Discussion id`,
            NULL
        )) AS `Chat Respon`
    FROM data_chat
    GROUP BY Pic
)

SELECT
    *,
    ROUND(
        COALESCE(
            SAFE_DIVIDE(`Total Pesanan`, `Chat Respon`),
            0
        ) * 100,
        2
    ) AS `Conversion Rate`
FROM (
    SELECT * FROM total_kpi
    UNION ALL
    SELECT * FROM kpi_sales
)
ORDER BY Pic;
