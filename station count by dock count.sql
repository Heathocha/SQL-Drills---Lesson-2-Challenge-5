WITH 
	stationcount
AS(
   SELECT
        start_station,
		COUNT(*) as initial_station_count
    FROM
        trips
    GROUP BY 1
)
SELECT
    stations.name,
	stationcount.initial_station_count,
	stations.dockcount
FROM
    stationcount
JOIN
    stations
ON
    stations.name = stationcount.start_station
ORDER BY dockcount DESC;
