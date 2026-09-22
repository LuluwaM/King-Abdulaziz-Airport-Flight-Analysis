-- =============================================
-- King Abdulaziz Airport Flight Operations Analysis
-- Data Quality Checks
-- =============================================

-- 1. Check total number of records
SELECT COUNT(*) AS TotalFlights
FROM dbo.Flights;


-- 2. Check for missing values
SELECT
    COUNT(*) AS TotalRows,
    SUM(CASE WHEN movement IS NULL THEN 1 ELSE 0 END) AS MissingMovement,
    SUM(CASE WHEN flight_id IS NULL THEN 1 ELSE 0 END) AS MissingFlightID,
    SUM(CASE WHEN airline IS NULL THEN 1 ELSE 0 END) AS MissingAirline,
    SUM(CASE WHEN origin IS NULL THEN 1 ELSE 0 END) AS MissingOrigin,
    SUM(CASE WHEN destination IS NULL THEN 1 ELSE 0 END) AS MissingDestination,
    SUM(CASE WHEN total_duration_mins IS NULL THEN 1 ELSE 0 END) AS MissingDuration,
    SUM(CASE WHEN carbon_kg IS NULL THEN 1 ELSE 0 END) AS MissingCarbon,
    SUM(CASE WHEN eco_price_sar IS NULL THEN 1 ELSE 0 END) AS MissingPrice,
    SUM(CASE WHEN flight_date IS NULL THEN 1 ELSE 0 END) AS MissingDate
FROM dbo.Flights;


-- 3. Check for exact duplicate records
SELECT
    movement,
    flight_id,
    airline,
    origin,
    transit_point,
    destination,
    take_off_time,
    landing_time,
    transit_duration_mins,
    total_duration_mins,
    aircraft_model,
    carbon_kg,
    eco_price_sar,
    price_status,
    flight_date,
    day,
    COUNT(*) AS DuplicateCount
FROM dbo.Flights
GROUP BY
    movement,
    flight_id,
    airline,
    origin,
    transit_point,
    destination,
    take_off_time,
    landing_time,
    transit_duration_mins,
    total_duration_mins,
    aircraft_model,
    carbon_kg,
    eco_price_sar,
    price_status,
    flight_date,
    day
HAVING COUNT(*) > 1;
