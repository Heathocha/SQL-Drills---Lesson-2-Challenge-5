WITH 
	fullstations
AS(
   SELECT
        station_id,
		COUNT(*) as fulldates
    FROM
        status 
	WHERE
		bikes_available = 0
    GROUP BY 1
)
SELECT
    f.station_id,
	s.name,
	f.fulldates
FROM
    stations s
JOIN
    fullstations f
ON
    f.station_id = s.station_id
