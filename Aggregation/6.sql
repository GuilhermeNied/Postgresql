SELECT facid, EXTRACT(month FROM starttime) AS month, SUM(slots) FROM cd.bookings WHERE extract(year FROM starttime) = 2012 GROUP BY facid, month ORDER BY facid, month;