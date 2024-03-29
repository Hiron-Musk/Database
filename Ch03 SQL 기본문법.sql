#Ch03 SQL 기본문법

use market_db;

select * from member;

select mem_name from member;

select addr,debut_date "데뷔일자",mem_name from member;

select * from member where mem_name='블랙핑크';

select * from member where mem_number=4;

select mem_id, mem_name from member where height<=162;

select mem_id, height, mem_name from member where height>=165 and mem_number>6;

select mem_name, height, mem_number from member where height>=165 or mem_number>6;

select mem_name, height from member where height>=163 and height<=165;

select mem_name, height from member where height between 163 and 165;

select mem_name, addr from member where addr='경기' or addr='전남' or addr='경남';

select mem_name, addr from member where addr in('경기','전남','경남');

