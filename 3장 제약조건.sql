#날짜 : 2024/01/03
#이름 : 남가희
#내용 : 3장 제약조건

#실습 3-1
create table `user2`(
`uid` varchar(10) primary key,
`name` varchar(10),
`birth` char(10),
`addr` varchar(50));

#실습 3-2
insert into `user2` values('A101','김유신','1968-05-09','경남 김해시');
insert into `user2` values('A102','김춘추','1972-11-23','경남 경주시');
insert into `user2` values('A103','장보고','1978-03-01','전남 완도군');
insert into `user2` values('A105','강감찬','1979-08-16','서울시 관악구');
insert into `user2` values('A106','이순신','1981-05-23','부산시 진구');

#실습 3-3
create table `user3`(
`uid` varchar(10) primary key,
`name` varchar(10),
`birth` char(10),
`hp` char(30) unique,
`addr` varchar(50));


#실습 3-4
insert into `user3` values('A101','김유신','1968-05-09','010-1234-1111','경남 김해시');
insert into `user3` values('A102','김춘추','1972-11-23','010-1234-2222','경남 경주시');
insert into `user3` values('A103','장보고','1978-03-01','010-1234-3333','전남 완도시');
insert into `user3` values('A104','강감찬','1979-08-16','010-1234-4444','서울시 관악구');
insert into `user3` values('A105','이순신','1981-05-23','010-1234-5555','부산시 진구');
insert into `user3` values('A106','안중근','1981-05-21',null,'부산시 진구');

#실습 3-5
create table `parent`(
`pid` varchar(10) primary key,
`name` varchar(10),
`birth` char(10),
`addr` varchar(100)
);

create table `child`(
`cid` varchar(10) primary key,
`name` varchar(10),
`hp` char(13) unique,
`parent` varchar(10),
foreign key(`parent`) references `parent`(`pid`)
);

#실습 3-6
insert into `parent`(`pid`,`name`,`birth`,`addr`) values('P101','김유신','1968-05-09','경남 김해시');
insert into `parent`(`pid`,`name`,`birth`,`addr`) values('P102','김춘추','1972-11-23','경남 경주시');
insert into `parent`(`pid`,`name`,`birth`,`addr`) values('P103','장보고','1978-03-01','전남 완도시');
insert into `parent`(`pid`,`name`,`birth`,`addr`) values('P104','강감찬','1979-08-16','서울시 관악구');
insert into `parent`(`pid`,`name`,`birth`,`addr`) values('P105','이순신','1981-05-23','부산시 진구');

insert into `child`(`cid`,`name`,`hp`,`parent`) values('C101','김철수','010-1234-0001','P101');
insert into `child`(`cid`,`name`,`hp`,`parent`) values('C102','김영희','010-1234-0002','P101');
insert into `child`(`cid`,`name`,`hp`,`parent`) values('C103','강철수','010-1234-0003','P103');
insert into `child`(`cid`,`name`,`hp`,`parent`) values('C104','이철수','010-1234-0004','P105');

#실습 3-7
create table`user4`(
`uid` varchar(10) primary key,
`name` varchar(10) not null,
`gender` char(1),
`age` int default 1,
`hp`char(13) unique,
`addr` varchar(20)
);

#실습 3-8
insert into `user4`(`uid`,`name`,`gender`,`age`,`hp`,`addr`) values('A101','김유신','M',25,'010-1234-1111','경남 김해시');
insert into `user4`(`uid`,`name`,`gender`,`age`,`hp`,`addr`) values('A102','김춘추','M',23,'010-1234-2222','경남 경주시');
insert into `user4`(`uid`,`name`,`gender`,`age`,`hp`,`addr`) values('A103','장보고','M',35,'010-1234-3333','전남 완도시');
insert into `user4`(`uid`,`name`,`gender`,`age`,`hp`,`addr`) values('A104','강감찬','M',42,'010-1234-4444','서울시 관악구');
insert into `user4`(`uid`,`name`,`gender`,`hp`,`addr`) values('A105','이순신','M','010-1234-5555','부산시 진구');
insert into `user4`(`uid`,`name`,`gender`,`age`,`hp`,`addr`) values('A106','신사임당','F',32,null,'강릉시');
insert into `user4`(`uid`,`name`,`gender`,`age`,`hp`,`addr`) values('A107','허난설현','F',27,null,'경기도 광주시');

#실습 3-9
create table `user5`(
`seq` int primary key auto_increment,
`name` varchar(10) not null,
`gender`char(1) check(`gender` in ('M','F')),
`age` int default 1 check (`age`>0 and `age`<100),
`addr`varchar(20)
);
insert into `user5`(`name`,`gender`,`age`,`addr`) values('김유신','M',25,'경남 김해시');
insert into `user5`(`name`,`gender`,`age`,`addr`) values('김춘추','M',23,'경남 경주시');
insert into `user5`(`name`,`gender`,`age`,`addr`) values('장보고','M',35,'전남 완도시');
insert into `user5`(`name`,`gender`,`age`,`addr`) values('강감찬','M',42,'서울시 관악구');
insert into `user5`(`name`,`gender`,`age`,`addr`) values('이순신','M',51,'부산시');
insert into `user5`(`name`,`gender`,`age`,`addr`) values('신사임당','F',32,'강릉시');




#실습 3-10

