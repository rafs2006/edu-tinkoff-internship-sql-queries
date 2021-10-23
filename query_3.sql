SELECT name, SUM(quantity) AS passengers FROM flights
JOIN pilots on flights.first_pilot_id = pilots.pilot_id
JOIN planes on flights.plane = planes.plane_id
WHERE cargo_flg=FALSE AND (flight_dt BETWEEN '2021-01-01' AND '2021-12-31')
GROUP BY name
ORDER BY passengers DESC LIMIT 10;