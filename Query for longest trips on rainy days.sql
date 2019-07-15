WITH 
	rainytrips
AS(
   SELECT
        DATE(date) date
    FROM
        weather
	WHERE
		events like 'Rain'
    GROUP BY 1
)
SELECT
    rainytrips.date,
  	trips.trip_id,
	trips.duration,
	trips.start_date,
	trips.end_date
FROM
    trips
JOIN
    rainytrips
ON
    rainytrips.date = DATE(trips.start_date)
ORDER BY duration DESC; 