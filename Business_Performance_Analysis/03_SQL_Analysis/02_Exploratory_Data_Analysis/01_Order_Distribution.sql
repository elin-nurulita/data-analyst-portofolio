
-- =====================================================
-- ORDER DISTRIBUTION ANALYSIS
-- =====================================================

-- 1. ORDERS BY SUBMISSION DATE
SELECT
    `Tanggal Pengajuan`,
    COUNT(`No pengajuan`) AS `Total pesanan`
FROM `portfolio-473815.motocycle.pesanan_clean`
GROUP BY `Tanggal Pengajuan`
ORDER BY `Total pesanan` DESC;


-- 2. ORDERS BY ORDER STATUS
SELECT
    `Status PK`,
    COUNT(`No pengajuan`) AS `Total pesanan`
FROM `portfolio-473815.motocycle.pesanan_clean`
GROUP BY `Status PK`
ORDER BY `Total pesanan` DESC;


-- 3. ORDERS BY SURVEY STATUS
SELECT
    `Status Survey`,
    COUNT(`No pengajuan`) AS `Total pesanan`
FROM `portfolio-473815.motocycle.pesanan_clean`
GROUP BY `Status Survey`
ORDER BY `Total pesanan` DESC;


-- 4. ORDERS BY SLIK CLASSIFICATION
SELECT
    `Hasil SLIK`,
    COUNT(`No pengajuan`) AS `Total pesanan`
FROM `portfolio-473815.motocycle.pesanan_clean`
GROUP BY `Hasil SLIK`
ORDER BY `Total pesanan` DESC;
