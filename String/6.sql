SELECT substr (memb.surname, 1, 1) as le, count(*) from cd.members memb group by le order by le