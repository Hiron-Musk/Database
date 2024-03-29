#실습 6-2
insert into `bank_customer`values('730423-1000001','김유신',1,'010-1234-1001','경남 김해시');
insert into `bank_customer`values('730423-1000002','김춘추',1,'010-1234-1002','경남 경주시');
insert into `bank_customer`values('730423-1000003','장보고',1,'010-1234-1003','전남 완도군');
insert into `bank_customer`values('102-12-51094','(주)정보산업',2,'051-500-1004','부산시 부산진구');
insert into `bank_customer`values('930423-1000005','이순신',1,'010-1234-1005','서울 종로구');

insert into `bank_account` values ('101-11-1001', 'S1', '자유저축예금', 1550000, '2011-04-11','730423-1000001');
insert into `bank_account` values ('101-11-1002', 'S1', '자유저축예금', 260000, '2011-05-12','930423-1000005');
insert into `bank_account` values ('101-11-1003', 'S1', '자유저축예금', 75000, '2011-06-13','750423-1000003');
insert into `bank_account` values ('101-12-1001', 'S2', '기업저축예금', 15000000, '2011-07-14','102-12-51094');
insert into `bank_account` values ('101-13-1001', 'S3', '정기저축예금', 1200000, '2011-08-15','730423-1000002');


insert into `bank_transaction`(t_a_no,t_dist,t_amount,t_datetime) values('101-11-1001',1,50000,'2023-01-01 13:15:10');
insert into `bank_transaction`(t_a_no,t_dist,t_amount,t_datetime) values('101-12-1001',2,1000000,'2023-01-02 13:15:12');
insert into `bank_transaction`(t_a_no,t_dist,t_amount,t_datetime) values('101-11-1002',3,260000,'2023-01-03 13:15:14');
insert into `bank_transaction`(t_a_no,t_dist,t_amount,t_datetime) values('101-11-1002',2,100000,'2023-01-04 13:15:16');
insert into `bank_transaction`(t_a_no,t_dist,t_amount,t_datetime) values('101-11-1003',3,75000,'2023-01-05 13:15:18');
insert into `bank_transaction`(t_a_no,t_dist,t_amount,t_datetime) values('101-11-1001',1,150000,'2023-01-05 13:15:28');

#실습6-6
select `c_no`, `c_name`,`c_phone`,`a_no`,`a_item_name`,`a_balance`
from `bank_customer` as a
join `bank_account` as b on a.c_no=b.a_c_no;

select 
	`t_dist`,
    `t_amount`,
    `t_datetime`
from `bank_customer` as a 
join `bank_account` as b on a.c_no = b.a_c_no
join `bank_transaction` as c on b.a_no = c.t_a_no
where `c_name` = '이순신';


select 
	`c_no`,
    `c_name`,
    `a_no`,
    `a_balance`,
    `a_open_date`
from `bank_customer` as a 
join `bank_account` as b on a.c_no = b.a_c_no
where `a_balance`=(select MAX(`a_balance`) from `bank_account`);

