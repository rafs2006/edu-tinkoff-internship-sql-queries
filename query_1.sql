SELECT name, flight_dt FROM flights
JOIN pilots ON flights.second_pilot_id = pilots.pilot_id
WHERE (flight_dt BETWEEN '2021-08-01' AND '2021-08-31') AND (destination = 'SVO')
ORDER BY flight_dt;