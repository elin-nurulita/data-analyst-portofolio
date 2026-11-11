
-- =====================================================
-- CREATE CLEAN TABLES
-- Dataset: portfolio-473815.motocycle
-- =====================================================

-- 1. ADS CLEAN
CREATE TABLE `portfolio-473815.motocycle.ads_clean` AS
SELECT
    * EXCEPT(THBL, TGL, `Cost per Result`),
    CAST(THBL AS STRING) AS THBL,
    CAST(TGL AS STRING) AS TGL,
    SAFE_CAST(`Cost per Result` AS FLOAT64) AS `Cost per Result`,
    CASE
        WHEN SAFE_CAST(`Cost per Result` AS FLOAT64) IS NULL
        THEN `Act cost`
        ELSE SAFE_CAST(`Cost per Result` AS FLOAT64)
    END AS `Cost per Result adj`
FROM `portfolio-473815.motocycle.ads`;


-- 2. CHAT CLEAN
CREATE TABLE `portfolio-473815.motocycle.chat_clean` AS
SELECT
    * EXCEPT(Id, `Pic employee id`, `Phone number`, `Application number`, Date),
    CAST(Id AS STRING) AS Id,
    CAST(`Pic employee id` AS STRING) AS `Pic employee id`,
    CAST(`Phone number` AS STRING) AS `Phone number`,
    CAST(`Application number` AS STRING) AS `Application number`,
    CAST(Date AS DATE) AS Date
FROM `portfolio-473815.motocycle.chat`;


-- 3. PESANAN CLEAN
CREATE TABLE `portfolio-473815.motocycle.pesanan_clean` AS
SELECT
    * EXCEPT(
        `No pengajuan`,
        `No KTP`,
        `No Telp`,
        RT,
        RW,
        `NIP Sales`,
        `NIP SPV`,
        `NIP Petugas Survey`
    ),
    CAST(`No pengajuan` AS STRING) AS `No pengajuan`,
    CAST(`No KTP` AS STRING) AS `No KTP`,
    CAST(`No Telp` AS STRING) AS `No Telp`,
    CAST(RT AS STRING) AS RT,
    CAST(RW AS STRING) AS RW,
    CAST(`NIP Sales` AS STRING) AS `NIP Sales`,
    CAST(`NIP SPV` AS STRING) AS `NIP SPV`,
    CAST(`NIP Petugas Survey` AS STRING) AS `NIP Petugas Survey`
FROM `portfolio-473815.motocycle.pesanan`;


-- 4. ARTIKEL CLEAN
CREATE OR REPLACE TABLE `portfolio-473815.motocycle.artikel_clean` AS

SELECT
    * EXCEPT(`Group Artikel`),

    CASE
        WHEN `Artice name` IS NOT NULL
        THEN TRIM(SPLIT(`Artice name`, '-')[SAFE_OFFSET(0)])
        ELSE NULL
    END AS `Group Artikel`

FROM `portfolio-473815.motocycle.artikel`;
