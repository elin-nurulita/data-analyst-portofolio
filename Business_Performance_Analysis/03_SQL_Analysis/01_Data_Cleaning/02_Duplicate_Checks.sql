
-- =====================================================
-- DUPLICATE CHECKING
-- =====================================================

-- 1. CHECK DUPLICATES IN CHAT TABLE
SELECT
    Id,
    COUNT(*) AS jumlah
FROM `portfolio-473815.motocycle.chat_clean`
GROUP BY Id
HAVING COUNT(*) > 1
ORDER BY jumlah DESC;


-- 2. CHECK DUPLICATES IN PESANAN TABLE
SELECT
    `No pengajuan`,
    COUNT(*) AS jumlah
FROM `portfolio-473815.motocycle.pesanan_clean`
GROUP BY `No pengajuan`
HAVING COUNT(*) > 1
ORDER BY jumlah;
