-- =============================================
-- King Abdulaziz Airport Flight Operations Analysis
-- Analysis-Ready View
-- =============================================

CREATE OR ALTER VIEW dbo.vw_Flights_Analysis AS

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

    -- Classify flights as Direct or Transit
    CASE
        WHEN transit_point = 'Direct' THEN 'Direct'
        ELSE 'Transit'
    END AS FlightType

FROM dbo.Flights;