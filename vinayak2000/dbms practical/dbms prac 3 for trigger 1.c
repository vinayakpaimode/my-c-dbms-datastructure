computer09@computer09:~$ sudo su postgres
[sudo] password for computer09: 
postgres@computer09:/home/computer09$ plsql
No command 'plsql' found, did you mean:
 Command 'psql' from package 'postgres-xc-client' (universe)
 Command 'psql' from package 'postgresql-client-common' (main)
plsql: command not found
postgres@computer09:/home/computer09$ psql
psql (9.3.24)
Type "help" for help.

postgres=# create database paimode;
CREATE DATABASE
postgres=# \connect paimode;
You are now connected to database "paimode" as user "postgres".
paimode=# create table student(id int primary key,name char(30),mark int);
CREATE TABLE
paimode=# insert into student values(1,'vinayak',80); 
INSERT 0 1
paimode=# create or replace function f10() returns trigger as 'begin if new.mark<10 or new.mark>100 then raise exception ''values can not insert %s'',new;end if;return new; end' language 'plggsql';
ERROR:  language "plggsql" does not exist
paimode=# create or replace function f10() returns trigger as 'begin if new.mark<10 or new.mark>100 then raise exception ''values can not insert %s'',new;end if;return new; end' language 'plpgsql';
CREATE FUNCTION
paimode=# create trigger t10 before insert or update on student for each rowexecute procedure f10();
ERROR:  syntax error at or near "rowexecute"
LINE 1: ...r t10 before insert or update on student for each rowexecute...
                                                             ^
paimode=# create trigger t10 before insert or update on student for each row execute procedure f10();
CREATE TRIGGER
paimode=# insert into student values(2,'vinayak',101);
ERROR:  values can not insert (2,"vinayak                       ",101)s
paimode=# insert into student values(2,'vinayak',9);
ERROR:  values can not insert (2,"vinayak                       ",9)s
paimode=# insert into student values(2,'vinayak',99);
INSERT 0 1
paimode=# select * from students;
ERROR:  relation "students" does not exist
LINE 1: select * from students;
                      ^
paimode=# select * from student;
 id |              name              | mark 
----+--------------------------------+------
  1 | vinayak                        |   80
  2 | vinayak                        |   99
(2 rows)

paimode=# create or replace function f11() returns trigger as 'begin if new.mark<10 or new.mark>100 then raise exception ''values can not insert %'',new;end if;return new; end' language 'plpgsql';
CREATE FUNCTION
paimode=# create trigger t10 before insert or update on student for each row execute procedure f11();
ERROR:  trigger "t10" for relation "student" already exists
paimode=# create trigger t121 before insert or update on student for each row execute procedure f11();
CREATE TRIGGER
paimode=# insert into student values(2,'vinayak',101);
ERROR:  values can not insert (2,"vinayak                       ",101)s
paimode=# insert into student values(2,'vinayak',99);
ERROR:  duplicate key value violates unique constraint "student_pkey"
DETAIL:  Key (id)=(2) already exists.
paimode=# insert into student values(3,'vinayak',99);
INSERT 0 1
paimode=# 

