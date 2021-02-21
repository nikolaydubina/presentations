SELECT
    counties.name
    , COUNT(*) cnt
FROM counties
CROSS JOIN earthquakes
WHERE ST_CONTAINS(
    counties.boundaryshape
    , ST_POINT(earthquakes.longitude, earthquakes.latitude)
)
GROUP BY counties.name
ORDER BY cnt DESC