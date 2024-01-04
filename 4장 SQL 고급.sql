# 날짜 : 2024/01/03
# 이름 : 남가희
# 내용 : 4장 SQL 고급

# 실습 4-1
create table `member`(
`uid` varchar(10) primary key,
`name` varchar(10) not null,
`hp` char(13) unique,
`pos` varchar(10) not null,
`dep` int default null,
`rdate` datetime not null
);

create table `department`(
`depNo` int primary key,
`name` varchar(10) not null,
`tel` char(12) not null
);


create table `sales`(
`seq` int primary key auto_increment,
`uid` varchar(10) not null,
`year` year not null,
`month`int not null,
`sale` int not null
);

# 실습 4-2
insert into `member`(`uid`,`name`,`hp`,`pos`,`dep`,`rdate`) values('a101','박혁거세','010-1234-1001','부장',101,'2020-11-19 11:39:48');
insert into `member`(`uid`,`name`,`hp`,`pos`,`dep`,`rdate`) values('a102','김유신','010-1234-1002','차장',101,'2020-11-19 11:39:48');
insert into `member`(`uid`,`name`,`hp`,`pos`,`dep`,`rdate`) values('a103','김춘추','010-1234-1003','사원',101,'2020-11-19 11:39:48');
insert into `member`(`uid`,`name`,`hp`,`pos`,`dep`,`rdate`) values('a104','장보고','010-1234-1004','대리',102,'2020-11-19 11:39:48');
insert into `member`(`uid`,`name`,`hp`,`pos`,`dep`,`rdate`) values('a105','강감찬','010-1234-1005','과장',102,'2020-11-19 11:39:48');
insert into `member`(`uid`,`name`,`hp`,`pos`,`dep`,`rdate`) values('a106','이성계','010-1234-1006','차장',103,'2020-11-19 11:39:48');
insert into `member`(`uid`,`name`,`hp`,`pos`,`dep`,`rdate`) values('a107','정철','010-1234-1007','차장',103,'2020-11-19 11:39:48');
insert into `member`(`uid`,`name`,`hp`,`pos`,`dep`,`rdate`) values('a108','이순신','010-1234-1008','부장',104,'2020-11-19 11:39:48');
insert into `member`(`uid`,`name`,`hp`,`pos`,`dep`,`rdate`) values('a109','허균','010-1234-1009','부장',104,'2020-11-19 11:39:48');
insert into `member`(`uid`,`name`,`hp`,`pos`,`dep`,`rdate`) values('a110','정약용','010-1234-1010','사원',105,'2020-11-19 11:39:48');
insert into `member`(`uid`,`name`,`hp`,`pos`,`dep`,`rdate`) values('a111','박지원','010-1234-1011','사원',105,'2020-11-19 11:39:48');

insert into `department`(`depNo`,`name`,`tel`) values(101,'영업1부','051-512-1001');
insert into `department`(`depNo`,`name`,`tel`) values(102,'영업2부','051-512-1002');
insert into `department`(`depNo`,`name`,`tel`) values(103,'영업3부','051-512-1003');
insert into `department`(`depNo`,`name`,`tel`) values(104,'영업4부','051-512-1004');
insert into `department`(`depNo`,`name`,`tel`) values(105,'영업5부','051-512-1005');
insert into `department`(`depNo`,`name`,`tel`) values(106,'영업지원부','051-512-1006');
insert into `department`(`depNo`,`name`,`tel`) values(107,'인사부','051-512-1007');

insert into `sales`(`uid`,`year`,`month`,`sale`) values('a101','2018',1,98100);
insert into `sales`(`uid`,`year`,`month`,`sale`) values('a102','2018',1,136000);
insert into `sales`(`uid`,`year`,`month`,`sale`) values('a103','2018',1,80100);
insert into `sales`(`uid`,`year`,`month`,`sale`) values('a104','2018',1,78000);
insert into `sales`(`uid`,`year`,`month`,`sale`) values('a105','2018',1,93000);
insert into `sales`(`uid`,`year`,`month`,`sale`) values('a101','2018',2,23500);
insert into `sales`(`uid`,`year`,`month`,`sale`) values('a102','2018',2,126000);
insert into `sales`(`uid`,`year`,`month`,`sale`) values('a103','2018',2,18500);
insert into `sales`(`uid`,`year`,`month`,`sale`) values('a105','2018',2,19000);
insert into `sales`(`uid`,`year`,`month`,`sale`) values('a106','2018',2,53000);
insert into `sales`(`uid`,`year`,`month`,`sale`) values('a101','2018',1,24000);
insert into `sales`(`uid`,`year`,`month`,`sale`) values('a102','2019',1,109000);
insert into `sales`(`uid`,`year`,`month`,`sale`) values('a103','2019',1,101000);
insert into `sales`(`uid`,`year`,`month`,`sale`) values('a104','2019',1,53500);
insert into `sales`(`uid`,`year`,`month`,`sale`) values('a107','2019',1,24000);
insert into `sales`(`uid`,`year`,`month`,`sale`) values('a102','2019',2,160000);
insert into `sales`(`uid`,`year`,`month`,`sale`) values('a103','2019',2,101000);
insert into `sales`(`uid`,`year`,`month`,`sale`) values('a104','2019',2,43000);
insert into `sales`(`uid`,`year`,`month`,`sale`) values('a105','2019',2,24000);
insert into `sales`(`uid`,`year`,`month`,`sale`) values('a106','2019',2,109000);
insert into `sales`(`uid`,`year`,`month`,`sale`) values('a102','2019',1,201000);
insert into `sales`(`uid`,`year`,`month`,`sale`) values('a104','2020',1,63000);
insert into `sales`(`uid`,`year`,`month`,`sale`) values('a105','2020',1,74000);
insert into `sales`(`uid`,`year`,`month`,`sale`) values('a106','2020',1,122000);
insert into `sales`(`uid`,`year`,`month`,`sale`) values('a107','2020',1,111000);
insert into `sales`(`uid`,`year`,`month`,`sale`) values('a102','2020',2,120000);
insert into `sales`(`uid`,`year`,`month`,`sale`) values('a103','2020',2,93000);
insert into `sales`(`uid`,`year`,`month`,`sale`) values('a104','2020',2,84000);
insert into `sales`(`uid`,`year`,`month`,`sale`) values('a105','2020',2,180000);
insert into `sales`(`uid`,`year`,`month`,`sale`) values('a108','2020',2,76000);

# 실습 4-3
select * from `member` where `name`='김유신';
select * from `member` where `pos`='차장' AND dep=101;
select * from `member` where `pos`='차장'OR dep=101;
select * from `member` where `name`!='김춘추';
select * from `member` where `name`<>'김춘추';
select * from `member` where `pos`='사원'or `pos`='대리';
select * from `member` where `pos` in('사원','대리');
select * from `member` where `dep`in(101,102,103);

select * from `member` where `name` like '%신';
select * from `member` where `name` like '김%';
select * from `member` where `name` like '김__';
select * from `member` where `name` like '_성_';
select * from `member` where `name` like '정_';

select * from `sales` where `sale`>50000;
select * from `sales` where `sale`>=50000 and `sale`<100000 and `month`=1;
select * from `sales` where `sale`between 50000 and 100000;
select * from `sales` where `sale` not between 50000 and 100000;
select * from `sales` where `year` in(2020);
select * from `sales` where `month` in(1,2);

# 실습 4-4
select * from `Sales` order by `sale`; #디폴트 오름차순
select * from `Sales` order by `sale` asc; #오름차순
select * from `Sales` order by `sale`desc; #내림차순
select * from `member` order by `name`;
select * from `member` order by `name`desc;
select * from `member` order by `rdate`asc;
select * from `sales` where `sale`>50000 order by `sale`desc;
select * from `sales` 
where `sale`>50000
order by `year`,`month`,`sale` desc;

# 실습 4-5
select * from sales limit 3;
select * from sales limit 0,3; 
select * from sales limit 1,2; #start,size <인덱스 : 제로베이스>
select * from sales limit 5,3;
select * from sales order by `sale` desc limit 3,5;
select * from sales where `sale`<50000 order by `sale` desc limit 3;
select * from sales
where `sale`>50000
order by `year` desc, `month`,`sale`desc
limit 5;

# 실습 4-6
select sum(sale) as `합계` from `sales`;
select avg(sale) as `평균` from `sales`;
select max(sale) as `최대값` from `sales`;
select min(sale) as `최소값` from `sales`;
select ceiling(1.2); #내림
select ceiling(1.8);
select floor(1.2); #올림
select floor(1.8);
select round(1.2); #반올림
select round(1.8);
select rand();
select ceiling(rand()*10);
select count(sale) as `갯수` from `sales`;
select count(*) as `갯수` from `sales`;

select left('HelloWorld',5);
select right('HelloWorld',5);
select substring('HelloWorld',6,5);
select concat('Hello','World');
select concat(`uid`,`name`,`hp`) from `member` where `uid`='a108';

select curdate();
select curtime();
select now();
insert into `member` values('a112','유관순','010-1234-1012','대리',107,now());

# 실습 4-7
select sum(`sale`) as '2018년 1월 매출 총합' from `sales` where year=2018 and month=1;

# 실습 4-8
select sum(`sale`) as '2019년 2월 5만원 이상 매출 총합', avg(`sale`) as '2019년 2월 5만원 이상 매출 평균'
from `sales` where year=2019 and month=2 and sale>=50000;

# 실습 4-9
select min(`sale`) as '2020년 최저 매출', max(`sale`) as '2020년 최고 매출'
from `sales` where year=2020;

# 실습 4-10
select * from `sales` group by `uid`;
select * from `sales` group by `year`;
select * from `sales` group by `uid`, `year`;

select `uid`, count(*) as '건수' from `sales` group by `uid`;
select `uid`, sum(sale) as '합계' from `sales` group by `uid`;
select `uid`, avg(sale) as '평균' from `sales` group by `uid`;

select `uid`,`year`,sum(sale) as '합계'
from `sales`
group by `uid`,`year`;

select `uid`,`year`,sum(sale) as '합계'
from `sales`
group by `uid`,`year`
order by `year` asc, `합계`desc;

select `uid`,`year`,sum(sale) as '합계'
from `sales`
where `sale`>=50000
group by `uid`,`year`
order by `합계` desc;

# 실습 4-11
select `uid`,sum(sale) as '합계' from `sales`
group by `uid`
having `합계`>=200000;

select `uid`,`year`,sum(sale) as '합계' 
from `sales`
where `sale`>=100000
group by `uid`,`year`
having `합계`>=200000
order by `합계` desc;

# 실습 4-12
create table `sales2` like `sales`;
insert into `sales2` select * from `sales`;
update `sales2` set `year`=`year`+3;

select * from `sales` union select * from `sales2`;
select * from `sales` where `sale`>=100000
union
select * from `sales2` where `sale`>=100000;

select `uid`,`year`,`sale` from sales
union
select `uid`,`year`,`sale` from sales2;

select `uid`,`year`,sum(sale) as '합계'
from `sales`
group by `uid`,`year`
union
select `uid`,`year`,sum(sale) as '합계'
from `sales2`
group by `uid`,`year`
order by `year` asc, `합계` desc;

# 실습 4-13
select * from `sales` inner join `member` on`sales`.uid=`member`.uid;
select * from `member` inner join `department` on`member`.dep=`department`.depNo;

select * from `sales` as a join `member` as b on a.uid=b.uid;
select * from `member` as a join `department` as b on a.dep=b.depNo;

select * from `sales` as a ,`member` as b where a.uid=b.uid;
select * from `member` as a ,`department` as b where a.dep=b.depNo;

select a.`seq`,a.`uid`,`sale`,`name`,`pos` from `sales` as a
join `member` as b on a.`uid`=b.`uid`;

select a.`seq`,a.`uid`,`sale`,`name`,`pos` from `sales` as a
join `member` as b using(uid);

select a.`seq`,a.`uid`,`sale`,`name`,`pos` from `sales` as a
join `member` as b on a.`uid`=b.`uid`
where `sale`>=100000;

select a.`seq`,a.`uid`,b.`name`,b.`pos`,`year`,sum(`sale`) as '합계' from `sales` as a
join `member` as b on a.`uid`=b.`uid`
group by a.`uid`,a.`year` having `합계`>=100000
order by a.`year` asc, `합계` desc;

select * from `sales` as a
join `member` as b on a.uid=b.uid
join `department` as c on b.dep=c.depNo;

select a.`seq`,a.`uid`, a.`sale`,b.`name`,b.`pos`,c.`name` from `sales` as a
join `member` as b on a.`uid`=b.`uid`
join `department` as c on b.dep=c.depNo;

select a.`seq`,a.`uid`, a.`sale`,b.`name`,b.`pos`,c.`name` from `sales` as a
join `member` as b on a.`uid`=b.`uid`
join `department` as c on b.dep=c.depNo
where `sale`>100000
order by `sale`desc;

# 실습 4-14
select * from `sales` as a left join `member` as b on a.uid=b.uid;
select * from `sales` as a right join `member` as b on a.uid=b.uid;
select a.seq,a.uid,`sale`,`name`,`pos` from sales as a
left join member as b using(uid);
select a.seq,a.uid,`sale`,`name`,`pos` from sales as a
right join member as b using(uid);

# 실습 4-15
select `uid`,a.`name`,`pos`,b.`name` from `member` as a join `department` as b on a.dep=b.depNo;

# 실습 4-16 데이터 일부수정한 후 다시 실행하기(쿼리는 그대로)
select * from `sales` as a join `member` as b on a.uid=b.uid
where a.`uid`='a102' and year=2019; # 값목록확인

select sum(`sale`) as '2019년 김유신의 매출합' from `sales` as a join `member` as b on a.uid=b.uid
where a.`uid`='a102' and year=2019;

# 실습 4-17 #a는 멤버 b는 매출 c는 부서 다시
select a.`name`,b.`name`,`pos`,`year`,sum(`sale`) from `member` as a 
join `member` as b on a.`uid`=b.`uid`
join `department` as c on b.dep=c.depNo
where year=2019 and `sale`>=50000
group by `name`
having `sale`>=100000
order by sum(`sale`) desc;