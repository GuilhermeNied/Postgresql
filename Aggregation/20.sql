select name, case when class=1 then 'high' when class=2 then 'average' else 'low' end revenue from ( select fac.name as name, ntile(3) over (order by sum(case when memid = 0 then slots * fac.guestcost else slots * membercost end) desc) as class from cd.bookings bk inner join cd.facilities fac on bk.facid = fac.facid group by fac.name ) as subq order by class, name