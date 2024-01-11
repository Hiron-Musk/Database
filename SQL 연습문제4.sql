#날짜 : 2024/01/11
#이름 : 남가희
#내용 : SQL 연습문제4

#실습 4-1
#create database `bookstore`;
#create user `bookstore`@`%` identified by '1234';
#grant all privileges on bookstore. * to `bookstore`@`%`;
#grant all privileges on bookstore. * to `jsa7868`@`%`;
#FLUSH PRIVILEGES

#실습 4-2
create table customer(
`custid` int primary key auto_increment,
`name` varchar(10) not null,
`address`varchar(20) default null,
`phone` varchar(13) default null
);

create table book(
`bookid` int primary key ,
`bookname` varchar(20) not null,
`publisher`varchar(20) not null,
`price` int default null
);

create table `order`(
`orderid`int primary key auto_increment ,
`custid` int not null,
`bookid`int not null,
`saleprice` int not null,
`orderdate`date not null
);

#실습 4-3
insert into customer(name,address,phone)values('박지성','영국맨체스타','000-5000-0001');
insert into customer(name,address,phone)values('김연아','대한민국서울','000-6000-0001');
insert into customer(name,address,phone)values('장미란','대한민국강원도','000-7000-0001');
insert into customer(name,address,phone)values('추신수','미국클리블랜드','000-8000-0001');
insert into customer(name,address)values('박세리','대한민국대전');

insert into book(bookid,bookname,publisher,price)values(1,'축구의역사','굿스포츠',7000);
insert into book(bookid,bookname,publisher,price)values(2,'축구아는여자','나무수',13000);
insert into book(bookid,bookname,publisher,price)values(3,'축구의이해','대한미디어',22000);
insert into book(bookid,bookname,publisher,price)values(4,'골프바이블','대한미디어',35000);
insert into book(bookid,bookname,publisher,price)values(5,'피겨교본','굿스포츠',8000);
insert into book(bookid,bookname,publisher,price)values(6,'역도단계별기술','굿스포츠',6000);
insert into book(bookid,bookname,publisher,price)values(7,'야구의추억','이상미디어',20000);
insert into book(bookid,bookname,publisher,price)values(8,'야구를부탁해','이상미디어',13000);
insert into book(bookid,bookname,publisher,price)values(9,'올림픽이야기','삼성당',7500);
insert into book(bookid,bookname,publisher,price)values(10,'Olympic Champions','Pearson',13000);

insert into `order`(custid,bookid,saleprice,orderdate)values(1,1,6000,'2014-07-01');
insert into `order`(custid,bookid,saleprice,orderdate)values(1,3,21000,'2014-07-03');
insert into `order`(custid,bookid,saleprice,orderdate)values(2,5,8000,'2014-07-03');
insert into `order`(custid,bookid,saleprice,orderdate)values(3,6,6000,'2014-07-04');
insert into `order`(custid,bookid,saleprice,orderdate)values(4,7,20000,'2014-07-05');
insert into `order`(custid,bookid,saleprice,orderdate)values(1,2,12000,'2014-07-07');
insert into `order`(custid,bookid,saleprice,orderdate)values(4,8,13000,'2014-07-07');
insert into `order`(custid,bookid,saleprice,orderdate)values(3,10,12000,'2014-07-08');
insert into `order`(custid,bookid,saleprice,orderdate)values(2,10,7000,'2014-07-09');
insert into `order`(custid,bookid,saleprice,orderdate)values(3,8,13000,'2014-07-10');

#실습 4-4
select custid,name,address from customer;

#실습 4-5
select bookname,price from book;

#실습 4-6
select price,bookname from book;

#실습 4-7
select bookid,bookname,publisher,price from book;

#실습 4-8
select publisher from book;

#실습 4-9
select distinct publisher from book;

#실습 4-10
select bookid, bookname, publisher, price from book where price>=20000;

#실습 4-11
select bookid,bookname,publisher,price from book where price<20000;

#실습 4-12
select bookid,bookname,publisher,price from book where price between 10000 and 20000;

#실습 4-13
select bookid, bookname,price from book where price between 15000 and 30000;

#실습 4-14
select bookid, bookname, publisher, price from book where bookid in (2,3,5);

#실습 4-15
select bookid,bookname,publisher,price from book where bookid %2=0;

#실습 4-16
select custid,`name`,address,phone from customer where name like  '박%';

#실습 4-17
select custid, name, address, phone from customer where address like  '대한민국%'; 

#실습 4-18
select custid, name, address, phone from customer where phone is not null;

#실습 4-19
select bookid, bookname, publisher, price from book where publisher in('굿스포츠','대한미디어');

#실습 4-20
select publisher from book where bookname='축구의역사';

#실습 4-21
select publisher from book where bookname like '%축구%';

#실습 4-22
select bookid, bookname, publisher, price from book where bookname like'_구%';

#실습 4-23
select bookid, bookname, publisher, price from book where bookname like '%축구%' and price>=20000 ;

#실습 4-24
select bookid, bookname, publisher, price from book order by bookname;

#실습 4-25
select * from book order by price, bookname;

#실습 4-26
select * from book order by price desc,publisher;

#실습 4-27
select * from book order by price desc limit 3; 

#실습 4-28
select * from book order by price limit 3; 

#실습 4-29
select sum(saleprice)as 총판매액 from `order`;

#실습 4-30
select sum(saleprice)as 총판매액, avg(saleprice) as 평균값, 
min(saleprice) as 최저가, max(saleprice) as 최고가
from `order`;

#실습 4-31
select count(orderid) as 판매건수 from `order`;

#실습 4-32 복습하기!
select bookid, 
REPLACE(bookname,'야구','농구') as bookname,
publisher, price from book;

#실습 4-33
select custid, count(custid) as 수량 from `order`
where saleprice>=8000
group by custid having 수량>=2 order by custid;

#실습 4-34
select * from customer a
join `order` b on custid=b.custid
order by a.custid;

select * from customer join `order` using (custid);

select * from customer a,`order` b where a.custid=b.custid;

#실습 4-35
select * from customer a
join `order` b on a.custid=b.custid
order by a.custid;

#실습 4-36
select `name`, saleprice from customer a
join `order` b
on a.custid=b.custid
order by a.custid;

#실습 4-37
select `name`,sum(saleprice) from customer a
join `order` b
on a.custid=b.custid 
group by a.custid;

#실습 4-38
select `name`,bookname from customer a
join `order` b on a.custid=b.custid
join book c on b.bookid=c.bookid;

#실습 4-39
select name,bookname from customer a
join `order` b on a.custid=b.custid
join book c on b.bookid=c.bookid
where saleprice=20000;

#실습 4-40
select name,saleprice from customer a
left join `order` b on a.custid=b.custid;

#실습 4-41
select sum(saleprice) as 총매출  from customer a
join `order` b on a.custid=b.custid
where name='김연아';

#실습 4-42
select bookname from book
order by price desc limit 1;

#실습 4-43 
select `name` from customer as a
left join `order` as b on a.custid=b.custid
where orderid is null;

#실습 4-44
insert into book(bookid,bookname, publisher) values(11,'스포츠의학', '한술의학서적');
select * from book;

#실습 4-45
update customer set address='대한민국부산' where custid=5;
select * from customer;

#실습 4-46
delete from customer where custid=5;
select * from customer;

