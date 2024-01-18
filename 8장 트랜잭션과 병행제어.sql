#날짜 : 2024/01/18
#이름 : 남가희
#내용 : 8장 트랜잭션과 병행 제어

#실습 8-1
start transaction;
select * from bank_account;
update bank_account set
a_balance=a_balance-10000
where a_no='101-11-1001';
update bank_account set
a_balance=a_balance+10000
where a_no='101-11-1212';
commit;
select * from bank_account;
#실습 8-2
start transaction;
update bank_account set
a_balance=a_balance-10000
where a_no='101-11-1001';
update bank_account set
a_balance=a_balance+10000
where a_no='101-11-1212';
select * from bank_account;
rollback;
select * from bank_account;

#실습 8-3
select @@autocommit;
set autocommit=0;
update bank_account set
a_balance=a_balance-10000
where a_no='101-11-1001';
select *from bank_account;

#실습 8-4 Lock & UnLock 병행제어 실습 by root
select * from bank_account where a_no='101-11-1001';
start transaction;
update bank_account set
a_balance=a_balance-10000
where a_no='101-11-1001';

commit;

#실습 8-4 Lock & UnLock 병행제어 실습 by jsa7868에서 실행하기!
select * from bank_account where a_no='101-11-1001';
start transaction;
update bank_account set
a_balance=a_balance-10000
where a_no='101-11-1001';

commit;
