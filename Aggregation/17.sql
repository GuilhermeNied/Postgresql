SELECT facid, total from ( SELECT facid, SUM(slots) total, rank() OVER(ORDER BY SUM(slots) desc) rank from cd.bookings group by facid) as ranked where rank = 1