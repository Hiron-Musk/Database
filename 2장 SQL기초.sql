#날짜 : 2024/01/02
#이름 : 남가희
#내용 : 2장 SQL 기초

#실습2-1
create table `User1`(
	`uid` varchar(10),
    `name` varchar(10),
    `hp` char(13),
    `age` int
    );
    
drop table `User1`;

#실습2-2
insert into `User1` values('A101','김유신','010-1234-1111',25);
insert into `User1` values('A102','김춘추','010-1234-2222',23);
insert into `User1` values('A103','장보고','010-1234-3333',32);
insert into `User1` (`uid`,`name`,`age`) values('A104','강감찬', 45);
insert into `User1` set `uid`='A105',`name`='이순신',`hp`='010-1234-5555';

#실습2-3
select * from `User1`;
select * from `User1` where `uid`='A101';
select * from `User1` where `name`='김춘추';
select * from `User1` where `age`<30;
select * from `User1`where `age`>=30;
select `uid`,`name`,`age` from `User1`;

#실습2-4
update `User1` set `hp`='010-1234-4444' where `uid`='A104';
update `User1` set `age`=51 where `uid`='A105';
update `User1` set `hp`='010-1234-1001',`age`=27 where `uid`='A101';

#실습2-5
delete from `User1` where `uid`='A101';
delete from `User1` where `uid`='A102' and `age`=25;
delete from `User1` where `age`>=30;

#실습2-6
alter table `User1` add `gender` tinyint;
alter table `User1` add `birth` char(10) after `name`;
alter table `User1` modify `gender` char(1);
alter table `User1` modify `age` tinyint;
alter table `User1` drop `gender`;

#실습2-7
create table `User1Copy` like `User1`;
insert into `User1Copy` select * from `User1`;

#실습2-8
create table `Tb1User`(
	`user_id` varchar(10),
    `user_name` varchar(10),
    `user_hp` char(13),
    `user_age` int,
    `user_addr` varchar(13));
    
insert into `Tb1User` values('p101','김유신','010-1234-1001',25,'경남 김해시');
insert into `Tb1User` values('p102','김춘추','010-1234-1002',23,'경남 경주시');
insert into `Tb1User` set `user_id`='p103',`user_name`='장보고', `user_age`=31,`user_addr`='전남 완도군';
insert into `Tb1User` set `user_id`='p104',`user_name`='강감찬', `user_addr`='서울시 중구';
insert into `Tb1User` set `user_id`='p105',`user_name`='이순신', `user_hp`='010-1234-1005',`user_age`=50;

    
create table `Tb1Product`(
	`prod_no` int,
    `prod_name` varchar(10),
    `prod_price` int,
    `prod_stock` int,
    `prod_company` varchar(10),
    `prod_date` date);
    
insert into `Tb1Product` values(1001,'냉장고',800000,25,'LG전자','2022-01-06');
insert into `Tb1Product` values(1002,'노트북',1200000,120,'삼성전자','2022-01-07');
insert into `Tb1Product` values(1003,'모니터',350000,35,'LG전자','2023-01-13');
insert into `Tb1Product` values(1004,'세탁기',1000000,80,'삼성전자','2021-01-01');
insert into `Tb1Product` values(1005,'컴퓨터',1000000,20,'삼성전자','2023-10-01');
insert into `Tb1Product` set `prod_no`=1006,`prod_name`='휴대폰', `prod_price`=950000,`prod_stock`=102;

#실습2-9
select * from `Tb1User`;
select `user_name` from `tb1user`;
select `user_name`,`user_hp` from `tb1user`;
select * from `Tb1User` where `user_id`='p102';
select * from `Tb1User` where `user_id`='p104' or `user_id`='p105';
select * from `Tb1User` where `user_addr`='부산시 금정구';
select * from `Tb1User` where `user_age`>30;
select * from `Tb1User` where `user_hp`is null;
update `tb1user` set `user_age`=42 where `user_id`='p104';
update `tb1user` set `user_addr`='부산시 진구' where `user_id`='p105';
delete from `tb1user`where`user_id`='p103';

select * from `tb1product`;
select `prod_name` from `tb1product`;
select `prod_name`,`prod_company`,`prod_price` from `tb1product`;
select * from `tb1product` where `prod_company`='LG전자';
select * from `tb1product` where `prod_company`='삼성전자';
update `tb1product` set `prod_name`='삼성전자',`prod_date`='2024-01-01' where `prod_no`=1006;
