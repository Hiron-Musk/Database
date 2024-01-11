#Ch03 SQL 기본문법

use market_db;

select * from member;

select mem_name from member;

select addr,debut_date "데뷔일자",mem_name from member;

select * from member where mem_name='블랙핑크';