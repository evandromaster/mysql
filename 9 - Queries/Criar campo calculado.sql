SHOW tables;

CREATE DATABASE db_test;


SELECT * FROM tbl_foo;

USE db_test;

CREATE TABLE tbl_foo (id SMALLINT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(200));

INSERT INTO tbl_foo (name) VALUES
	("bar"),
    ("baz"),
    ("eggs"),
    ("spam");
    
create table A (A1 int, A2 int, A3 int as (A1 + A2));

insert into A (A1, A2) values (7, 8), (9, 10), (11, 12), (13, 13), (14, 14);

alter table A
add column A5 int as (select sum(A4) from A group by A1);

select * from A;


update A
set A2 = 3
where A1 = 3;

set sql_safe_updates = 0;

08:08:46	alter table A add column A5 int as (select sum(A4) from A group by A1)	Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select sum(A4) from A group by A1)' at line 2	0.000 sec
