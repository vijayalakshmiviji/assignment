//QUEUries
use sales;
select snum, sname, city, comm from salespeople;

use sales;
select distinct snum from orders;

use sales;
select sname, comm from salespeople where city='london';

use sales;
select sname, comm from salespeople where city='london';

use sales;
select cname from cust where rating=100;

use sales;
select onum, amt, odate from orders;

use sales;
select cname from cust where rating>200;

use sales;
select cname from cust where city='san jose' or rating>200;

use sales;
select*from orders where amt>1000;

use sales;
select sname,city from salespeople where comm >0.10 and city='london';

use sales;
select cname from cust where rating <=100 or city ='rome';

use sales;
select sname,city from salespeople where city in ('barcelona', 'london');

use sales;
select sname, comm from salespeople where comm>0.10 and comm<0.12;

use sales;
select cname from cust where city is null;

use sales;
select*from orders where odate in ('1994-10-03','1994-10-04');

use sales;
select cname from cust ,orders where orders.cnum=cust.cnum and
orders.snum in (select snum from salespeople where sname in 'peel','motika'));

use sales;
select onum from orders where amt !=0 or amt is not null;

use sales;
select count(distinct snum) from orders;

use sales;
select count(distinct snum) from orders;

select odate,snum,max(amt) from orders group by odate,snum order by odate,snum;

select odate,snum, max(amt) from orders where amt>3000 group by odate, snum order by odate,snum;

select odate,snum, cnum from orders where amt= (select max(amt) from orders)

select count(*) from orders where odate='1994-10-03';
