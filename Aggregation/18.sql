SELECT firstname, surname, ((SUM(bk.slots) + 10) /20) * 10 as h,
rank() over(order by ((sum(bk.slots) + 10) / 20) * 10 desc) as rank
from cd.bookings bk
inner join cd.members memb
on bk.memid = memb.memid
group by memb.memid
order by rank, surname, firstname