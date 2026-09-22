-- =============================================
-- Data Validation
-- =============================================

-- Check date range
SELECT
    MIN(flight_date) AS StartDate,
    MAX(flight_date) AS EndDate,
    COUNT(DISTINCT flight_date) AS NumberOfDays
FROM dbo.Flights;


-- Check invalid flight durations
SELECT COUNT(*) AS InvalidDurationCount
FROM dbo.Flights
WHERE total_duration_mins <= 0;


-- Check invalid transit durations
SELECT COUNT(*) AS InvalidTransitDurationCount
FROM dbo.Flights
WHERE transit_duration_mins < 0;


-- Check price and carbon values
SELECT
    SUM(CASE WHEN eco_price_sar <= 0 THEN 1 ELSE 0 END) AS InvalidPrice,
    SUM(CASE WHEN carbon_kg <= 0 THEN 1 ELSE 0 END) AS InvalidCarbon,
    MIN(eco_price_sar) AS MinPrice,
    MAX(eco_price_sar) AS MaxPrice,
    MIN(carbon_kg) AS MinCarbon,
    MAX(carbon_kg) AS MaxCarbon
FROM dbo.Flights;    