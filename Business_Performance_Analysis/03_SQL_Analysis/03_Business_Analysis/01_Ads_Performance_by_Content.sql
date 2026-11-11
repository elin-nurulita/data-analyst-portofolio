
-- =====================================================
-- ADVERTISING PERFORMANCE BY CONTENT
-- =====================================================

WITH ads AS (
    SELECT
        TRIM(`nama konten `) AS nama_konten,
        SUM(Reach) AS reach,
        SUM(Impressions) AS impression,
        SUM(`Link clicks`) AS clicks,
        SUM(`Act cost`) AS cost,
        SUM(Results) AS chat,
        ROUND((SUM(`Act cost`) / SUM(Results)), 2) AS `cost per result`
    FROM `portfolio-473815.motocycle.ads_clean`
    GROUP BY 1
),

chat AS (
    SELECT
        TRIM(`Content name`) AS nama_konten,
        COUNT(`Application number`) AS pesanan
    FROM `portfolio-473815.motocycle.chat_clean`
    GROUP BY 1
)

SELECT
    a.*,
    COALESCE(c.pesanan, 0) AS pesanan
FROM ads AS a
LEFT JOIN chat AS c
    ON a.nama_konten = c.nama_konten
ORDER BY chat DESC;
