use testdb;
select st_info.ST_ID, st_info.NAME, st_info.DEPT, st_grade.LINUX, st_grade.DB from st_info, st_grade where st_info.ST_ID
=202201 and st_grade.ST_ID=202201;
