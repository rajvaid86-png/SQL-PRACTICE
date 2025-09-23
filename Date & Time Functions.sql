use pr;

select curdate() as today,
       curtime() as currentTime,
       now() as CurrentDateTime;

select year('2025-09-23') as YeAr,
       month('2025-09-23') as month,
       day('2025-09-23') as day;
       
select adddate('2025-09-23', Interval 10 day) as added10days;
select subdate('2025-09-23', Interval 2 month) as added10days;

select datediff('2025-07-23','2025-09-23')as daysleft;


select extract(hour from now()) as curhour,
	   extract(minute from now()) as curmin;
       
       
select date_format('2025-09-23','%w %m %y') as formattedDate;

select timestampdiff(year,'2003-11-21',curdate()) as age,
	   timestampdiff(month,'2003-11-21',curdate()) as month;



