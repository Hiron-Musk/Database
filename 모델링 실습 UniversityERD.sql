insert into student values('20101001',10,'P10101','정우성','760121-1234567','010-1101-7601',null,'서울');
insert into student values('20101002',10,'P10101','이정재','750611-1234567','010-1102-7506',null,'서울');
insert into student values('20111011',11,'P11103','전지현','890530-1234567','010-1103-8905','jjh@naver.com','대전');
insert into student values('20111013',11,'P11103','이나영','790413-1234567','010-2101-7904','lee@naver.com','대전');
insert into student values('20111014',11,'P12104','원빈','660912-1234567','010-2104-6609','one@daum.net','대전');
insert into student values('20221010',22,'P22110','장동건','790728-1234567','010-3101-7907','jang@naver.com','대구');
insert into student values('21231002',23,'P23102','고소영','840615-1234567','010-4101-8406','goso@daum.net','대구');
insert into student values('22311011',31,'P31104','김연아','651021-1234567','010-5101-6510','yuna@daum.net','대구');
insert into student values('22311014',31,'P31104','유재석','721128-1234567','010-6101-7211',null,'부산');
insert into student values('22401001',40,'P40101','강호동','920907-1234567','010-7103-9209',null,'부산');
insert into student values('22401002',40,'P40101','조인성','891209-1234567','010-7104-8912','join@gamail.com','광주');
insert into student values('22421003',42,'P42103','강동원','770314-1234567','010-8101-7703','dong@naver.com','광주');

insert into professors values('P10101',10,'김유신','750120-1234567','010-1101-1976','kimys@hg.ac.kr','서울');
insert into professors values('P10102',10,'계백','740610-1234567','010-1102-1975','gaeback@hg.ac.kr','서울');
insert into professors values('P11101',11,'김관창','880529-1234567','010-1103-1989','kwanch@hg.ac.kr','대전');
insert into professors values('P11103',11,'김춘추','780412-1234567','010-2101-1979','kimcc@hg.ac.kr','대전');
insert into professors values('P11104',11,'이사부','650911-1234567','010-2104-1966','leesabu@hg.ac.kr','대전');
insert into professors values('P22110',22,'장보고','780727-1234567','010-3101-1979','jangbg@hg.ac.kr','대구');
insert into professors values('P23102',23,'선덕여왕','830614-1234567','010-4101-1984','gueen@hg.ac.kr','대구');
insert into professors values('P31101',31,'강감찬','641020-1234567','010-5101-1965','kang@hg.ac.kr','대구');
insert into professors values('P31104',31,'신사임당','711127-1234567','010-6101-1972','sinsa@hg.ac.kr','부산');
insert into professors values('P40101',40,'이이','910906-1234567','010-7103-1992','leelee@hg.ac.kr','부산');
insert into professors values('P40102',40,'이황','881208-1234567','010-7104-1989','hwang@hg.ac.kr','광주');
insert into professors values('P42103',42,'송상현','760313-1234567','010-8101-1977','ssh@hg.ac.kr','광주');

insert into department values(10,'국어국문학과','051-510-1010');
insert into department values(11,'영어영문학과','051-510-1011');
insert into department values(20,'경영학과','051-510-1020');
insert into department values(21,'경제학과','051-510-1021');
insert into department values(22,'정치외교학과','051-510-1022');
insert into department values(23,'사회복지학과','051-510-1023');
insert into department values(30,'수학과','051-510-1030');
insert into department values(31,'통계학과','051-510-1031');
insert into department values(32,'생명과학과','051-510-1032');
insert into department values(40,'기계공학과','051-510-1040');
insert into department values(41,'전자공학과','051-510-1041');
insert into department values(42,'컴퓨터공학과','051-510-1042');

insert into lectures values('101001','P10101','대학 글쓰기',2,10,'본102');
insert into lectures values('101002','P10102','한국어음운론',3,30,'본102');
insert into lectures values('101003','P10102','한국현대문학사',3,30,'본103');
insert into lectures values('111011','P11103','중세영문학',3,25,'본201');
insert into lectures values('111012','P11104','영미시',3,25,'본201');
insert into lectures values('231110','P23102','사회복지학개론',1,8,'별관103');
insert into lectures values('311002','P31101','통계학의 이해',2,16,'별관303');
insert into lectures values('311003','P31104','기초 통계학',3,26,'별관303');
insert into lectures values('401019','P40101','기계 역학',3,36,'공학관102');
insert into lectures values('421012','P42103','데이터베이스',3,32,'공학관103');

insert into register values('20101001','101001','P10101',null,null,null,null,null,null);
insert into register values('20101001','101002','P10102',null,null,null,null,null,null);
insert into register values('20111013','111011','P11103',null,null,null,null,null,null);
insert into register values('21231002','231110','P23102',null,null,null,null,null,null);
insert into register values('22401001','401019','P40101',null,null,null,null,null,null);
insert into register values('22401001','421012','P42103',null,null,null,null,null,null);
insert into register values('20101001','101003','P10102',null,null,null,null,null,null);
insert into register values('22421003','311003','P31104',null,null,null,null,null,null);
insert into register values('22421003','421012','P42103',null,null,null,null,null,null);
insert into register values('20111013','111012','P11104',null,null,null,null,null,null);

#문제 1
select stdno,stdname,stdhp,a.depno,depname from student as a
join department as b on a.depNo=b.depNo;

#문제 2
select prono,proname,prohp,a.depno,depname from professors as a
join department as b on a.depNo=b.depNo;

#문제 3
select lecno,lecname,proName,proHp from lectures as a
join professors as b on a.proNo=b.proNo;

#문제 4
select lecno,lecname,b.prono,proname,prohp,b.depno,depname from lectures as a
join professors as b on a.proNo=b.proNo
join department as c on b.depno=c.depNo;

#문제 5
select a.stdno,stdname,a.lecno,lecname,a.prono,proname from register as a
join student as b on a.stdNo=b.stdNo
join lectures as c on a.lecNo=c.lecNo
join professors as d on a.proNo=d.proNo;

#문제 6
#문제풀이 update는 where를 생략하면 모든 행에 적용됨!
update register 
set regattenscore=ceil(rand()*100),
regmidscore=ceil(rand()*100),
regfinalscore=ceil(rand()*100);

update register set regmidscore=90,regfinalscore=20 where stdno='20101001';
update register set regmidscore=100,regfinalscore=90 where stdno='20111013';
update register set regmidscore=70,regfinalscore=100 where stdno='21231002';
update register set regmidscore=80,regfinalscore=60 where stdno='22401001';
update register set regmidscore=20,regfinalscore=100 where stdno='22421003';

update register set regattenscore=100 where stdno='20101001';
update register set regattenscore=90 where stdno='20111013';
update register set regattenscore=70 where stdno='21231002';
update register set regattenscore=40 where stdno='22401001';
update register set regattenscore=80 where stdno='22421003';

#문제 7
#문제풀이 update는 where를 생략하면 모든 행에 적용됨!
update register set regtotal=(regmidscore+regfinalscore+regattenscore)/3;

update register set regtotal=(regmidscore+regfinalscore+regattenscore)/3 where stdno='20101001';
update register set regtotal=(regmidscore+regfinalscore+regattenscore)/3 where stdno='20111013';
update register set regtotal=(regmidscore+regfinalscore+regattenscore)/3 where stdno='21231002';
update register set regtotal=(regmidscore+regfinalscore+regattenscore)/3 where stdno='22401001';
update register set regtotal=(regmidscore+regfinalscore+regattenscore)/3 where stdno='22421003';

#문제 8
#문제풀이
update register set reggrade=if(regtotal>=90,'A',
								if(regtotal>=80,'B',
									if(regtotal>=70,'C',
										if(regtotal>=60,'D','F'))));

update register set reggrade='C' where stdno='20101001';
update register set reggrade='A' where stdno='20111013';
update register set reggrade='B' where stdno='21231002';
update register set reggrade='F' where stdno='22401001';
update register set reggrade='D' where stdno='22421003';

#문제 9
#문제풀이
select * from register order by regtotal desc limit 1;

select max(regtotal) from register;

#문제 10
select avg(regtotal) from register as a
join student as b on a.stdNo=b.stdNo
where stdname='정우성';
