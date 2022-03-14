SELECT fac.facid, fac.name, trim(to_char(sum(bk.slots) / 2.0, '9999999999999999D99')) from cd.bookings bk
inner join cd.facilities fac
on fac.facid = bk.facid
group by fac.facid, fac.name
order by fac.facid