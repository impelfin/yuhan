use testdb;

create table st_info(ST_ID int, NAME varchar(20), DEPT varchar(25)) default charset=utf8;
create table st_grade(ST_ID int, LINUX int, DB int);

alter table st_info add constraint pk_stinfo primary key (ST_ID);
alter table st_grade add constraint pk_stgrade primary key (ST_ID);

insert into st_info values(202201, 'LeeGilDong','Game');
insert into st_info values(202202, 'KimGilDong','Game');
insert into st_info values(202203, 'MoonGilDong','Computer');
insert into st_info values(202204, 'HongGilDong','Computer');

insert into st_grade values (202201, 80, 70);
insert into st_grade values (202202, 90, 75);
insert into st_grade values (202203, 95, 85);
insert into st_grade values (202204, 65, 55);

select * from st_info;
select * from st_grade;
