
-- =====================================================
-- SLIK APPROVAL AND REJECTION ANALYSIS
-- =====================================================

SELECT
    `Hasil SLIK`,

    (
        COUNT(CASE
            WHEN `Status Survey` = 'ACC' THEN 1
        END)
        / COUNT(`No pengajuan`)
    ) * 100 AS `%ACC`,

    (
        COUNT(CASE
            WHEN `Status Survey` = 'TACC' THEN 1
        END)
        / COUNT(`No pengajuan`)
    ) * 100 AS `%TACC`

FROM `portfolio-473815.motocycle.pesanan_clean`

WHERE `Hasil SLIK` IN ('best', 'good')

GROUP BY `Hasil SLIK`
ORDER BY `%ACC` DESC;
