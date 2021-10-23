SELECT first_pilot_id AS second_pilot_id, cargo_flg, plane INTO flights_upd FROM flights
JOIN planes on flights.plane = planes.plane_id
WHERE cargo_flg = TRUE
UNION ALL
SELECT second_pilot_id, cargo_flg, plane FROM flights
JOIN planes on flights.plane = planes.plane_id
WHERE cargo_flg = TRUE;
SELECT name, COUNT(cargo_flg=TRUE) AS cargo FROM flights_upd
JOIN pilots on flights_upd.second_pilot_id = pilots.pilot_id
WHERE age > 45
GROUP BY name
HAVING COUNT(cargo_flg=TRUE) > 30;