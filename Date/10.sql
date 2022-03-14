select name, month, round((100slots)/ cast( 25(cast((month + interval '1 month') as date) - cast (month as date)) as numeric),1) as utilisation from ( select fac.name as name, date_trunc('month', starttime) as month, sum(slots) as slots from cd.bookings bk inner join cd.facilities fac on bk.facid = fac.facid group by fac.facid, month ) as i order by name, month