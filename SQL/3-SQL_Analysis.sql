-- =============================================
-- SQL Analysis
-- =============================================

-- 1. Flights by movement
SELECT
    movement,
    COUNT(*) AS FlightCount
FROM dbo.Flights
GROUP BY movement
ORDER BY FlightCount DESC;


-- 2. Average flight duration
SELECT
    AVG(total_duration_mins) AS AverageFlightDuration
FROM dbo.Flights;


-- 3. Direct vs Transit flights
SELECT
    CASE
        WHEN transit_point = 'Direct' THEN 'Direct'
        ELSE 'Transit'
    END AS FlightType,
    COUNT(*) AS FlightCount
FROM dbo.Flights
GROUP BY
    CASE
        WHEN transit_point = 'Direct' THEN 'Direct'
        ELSE 'Transit'
    END
ORDER BY FlightCount DESC;


-- 4. Average price by flight type
SELECT
    CASE
        WHEN transit_point = 'Direct' THEN 'Direct'
        ELSE 'Transit'
    END AS FlightType,
    AVG(eco_price_sar) AS AveragePrice
FROM dbo.Flights
GROUP BY
    CASE
        WHEN transit_point = 'Direct' THEN 'Direct'
        ELSE 'Transit'
    END;


-- 5. Flight volume by airline
SELECT
    airline,
    COUNT(*) AS FlightCount
FROM dbo.Flights
GROUP BY airline
ORDER BY FlightCount DESC;


-- 6. Flights by destination
SELECT
    destination,
    COUNT(*) AS FlightCount
FROM dbo.Flights
WHERE movement = 'DEPARTURE'
GROUP BY destination
ORDER BY FlightCount DESC;


-- 7. Average carbon emissions by aircraft
SELECT
    aircraft_model,
    COUNT(*) AS FlightCount,
    AVG(carbon_kg) AS AverageCarbon
FROM dbo.Flights
GROUP BY aircraft_model
HAVING COUNT(*) >= 10
ORDER BY AverageCarbon DESC;


-- 8. Flight volume by day
SELECT
    day,
    COUNT(*) AS FlightCount
FROM dbo.Flights
GROUP BY day
ORDER BY FlightCount DESC;