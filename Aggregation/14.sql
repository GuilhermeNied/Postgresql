SELECT memb.surname, memb.firstname, memb.memid, min(bk.starttime) as starttime
from cd.bookings bk
inner join cd.members memb on
memb.memid = bk.memid
where starttime >= '2012-09-01'
group by memb.surname, memb.firstname, memb.memid
order by memb.memid