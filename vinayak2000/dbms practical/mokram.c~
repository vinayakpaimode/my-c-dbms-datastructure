computer09@computer09:~$ sudo su postgres
[sudo] password for computer09: 
postgres@computer09:/home/computer09$ psql
psql (9.3.24)
Type "help" for help.

postgres=# create database vinu;
CREATE DATABASE
postgres=# \connect vinu;
You are now connected to database "vinu" as user "postgres".
vinu=# create table item(ino int primary key,iname varchar(60),rate int);
CREATE TABLE
vinu=# insert into item values(1,'keybord',1000);
INSERT 0 1
vinu=# insert into item values(1,'key',400);
ERROR:  duplicate key value violates unique constraint "item_pkey"
DETAIL:  Key (ino)=(1) already exists.
vinu=# insert into item values(2,'key',400);
INSERT 0 1
vinu=# insert into item values(3,'cpu',30000);
INSERT 0 1
vinu=# create or replace function f3() returns trigger as 'begin if (new.rate-old.rate)<2000 then raise exception ''values should be greter than 2000 %'',new;end if;return new; end' language 'plpgsql'
vinu-# create or replace function f1() returns trigger as 'begin if (new.rate-old.rate)<2000 then raise exception ''values should be greter than 2000 %'',new;end if;return new; end' language 'plpgsql';
ERROR:  syntax error at or near "create"
LINE 2: create or replace function f1() returns trigger as 'begin if...
        ^
vinu=#                                                                             create or replace function f1() returns trigger as 'begin if (new.rate-old.rate)<2000 then raise exception ''values should be greter than 2000 %'',new;end if;return new; end' language 'plpgsql';
CREATE FUNCTION
vinu=# create trigger t1 before update on item for each row execute procedure f1();
CREATE TRIGGER
vinu=# select * from item;
 ino |  iname  | rate  
-----+---------+-------
   1 | keybord |  1000
   2 | key     |   400
   3 | cpu     | 30000
(3 rows)

vinu=#  update item set rate=1000 where ino=1;
ERROR:  values should be greter than 2000 (1,keybord,1000)
vinu=#  update item set rate=3000 where ino=1;
UPDATE 1
vinu=#                                                                             create or replace function f2() returns trigger as 'begin if old.rate>500 then raise exception ''invalid %'',new;end if;return new; end' language 'plpgsql';CREATE FUNCTION
vinu=# create trigger t2 before delete on item for each row execute procedure f2(); 
CREATE TRIGGER
vinu=# delete from item where ino = 2;
DELETE 0
vinu=# select * from item;                                      ino |  iname  | rate  
-----+---------+-------
   2 | key     |   400
   3 | cpu     | 30000
   1 | keybord |  3000
(3 rows)

vinu=# create trigger t3 after delete on item for each row execute procedure f2();delete 
CREATE TRIGGER
vinu-# delete from item where ino = 2;
ERROR:  syntax error at or near "delete"
LINE 2: delete from item where ino = 2;
        ^
vinu=#                                                                             create or replace function f3() returns trigger as 'begin if old.rate>500 then raise exception ''invalid %'',new;end if;return new; end' language 'plpgsql';
CREATE FUNCTION
vinu=# create trigger t3 after delete on item for each row execute procedure f2();delete 
ERROR:  trigger "t3" for relation "item" already exists
vinu-# create trigger t3 after delete on item for each row execute procedure f3();ERROR:  syntax error at or near "create"
LINE 2: create trigger t3 after delete on item for each row execute ...
        ^
vinu=# create trigger t3 after delete on item for each row execute procedure f3();
ERROR:  trigger "t3" for relation "item" already exists
vinu=# create trigger t4 after delete on item for each row execute procedure f3();
CREATE TRIGGER
vinu=# delete from item where ino = 2;DELETE 0
vinu=# select * from item;
 ino |  iname  | rate  
-----+---------+-------
   2 | key     |   400
   3 | cpu     | 30000
   1 | keybord |  3000
(3 rows)

vinu=# delete from item where ino = 3;
ERROR:  record "new" is not assigned yet
DETAIL:  The tuple structure of a not-yet-assigned record is indeterminate.
CONTEXT:  PL/pgSQL function f2() line 1 at RAISE
vinu=# 




computer09@computer09:~$ sudo su postgres
[sudo] password for computer09: 
postgres@computer09:/home/computer09$ psql
psql (9.3.24)
Type "help" for help.

postgres=# create database paim;
CREATE DATABASE
postgres=# create table item(ino int primary key,iname varchar(60),rate int);
CREATE TABLE
postgres=# insert into item values(1,'keybord',1000);
INSERT 0 1
postgres=# insert into item values(2,'key',100);
INSERT 0 1
postgres=# insert into item values(3,'key',10000);
INSERT 0 1
postgres=# create or replace function f1() returns trigger as 'begin if old.rate>500 then raise exception ''invalid %'',new;end if;return new; end' language 'plpgsql';
CREATE FUNCTION
postgres=# create trigger t1 after delete on item for each row execute procedure f1();
CREATE TRIGGER
postgres=# select * from item;
 ino |  iname  | rate  
-----+---------+-------
   1 | keybord |  1000
   2 | key     |   100
   3 | key     | 10000
(3 rows)

postgres=# delete from item where ino = 2;
DELETE 1
postgres=# delete from item where ino = 3;
ERROR:  record "new" is not assigned yet
DETAIL:  The tuple structure of a not-yet-assigned record is indeterminate.
CONTEXT:  PL/pgSQL function f1() line 1 at RAISE
postgres=# select * from item;
 ino |  iname  | rate  
-----+---------+-------
   1 | keybord |  1000
   3 | key     | 10000
(2 rows)

postgres=# delete from item where ino = 3;
ERROR:  record "new" is not assigned yet
DETAIL:  The tuple structure of a not-yet-assigned record is indeterminate.
CONTEXT:  PL/pgSQL function f1() line 1 at RAISE
postgres=# create or replace function f2() returns trigger as 'begin if old.rate>500 then raise exception ''invalid %'',old;end if;return new; end' language 'plpgsql';
CREATE FUNCTION
postgres=# create or replace function f3() returns trigger as 'begin if old.rate>500 then raise exception ''invalid %'',old;end if;return old; end' language 'plpgsql';
CREATE FUNCTION
postgres=# create trigger t3 after delete on item for each row execute procedure f3();
CREATE TRIGGER
postgres=# insert into item values(2,'key',100);
INSERT 0 1
postgres=# select * from item; ino |  iname  | rate  
-----+---------+-------
   1 | keybord |  1000
   3 | key     | 10000
   2 | key     |   100
(3 rows)

postgres=# delete from item where ino = 2;DELETE 1
postgres=# delete from item where ino = 3;
ERROR:  record "new" is not assigned yet
DETAIL:  The tuple structure of a not-yet-assigned record is indeterminate.
CONTEXT:  PL/pgSQL function f1() line 1 at RAISE
postgres=# create or replace function f4() returns trigger as 'begin if old.rate>500 then raise exception ''invalid %'',old;end if;return old; end' language 'plpgsql';
CREATE FUNCTION
postgres=# create trigger t4 before delete on item for each row execute procedure f4();
CREATE TRIGGER
postgres=# insert into item values(2,'key',100);INSERT 0 1
postgres=# delete from item where ino = 2;DELETE 1
postgres=# delete from item where ino = 3;
ERROR:  invalid (3,key,10000)
postgres=# 



computer09@computer09:~$ sudo su postgres
[sudo] password for computer09: 
postgres@computer09:/home/computer09$ psql
psql (9.3.24)
Type "help" for help.

postgres=# create database vinu;
CREATE DATABASE
postgres=# \connect vinu;
You are now connected to database "vinu" as user "postgres".
vinu=# create table item(ino int primary key,iname varchar(60),rate int);
CREATE TABLE
vinu=# insert into item values(1,'keybord',1000);
INSERT 0 1
vinu=# insert into item values(1,'key',400);
ERROR:  duplicate key value violates unique constraint "item_pkey"
DETAIL:  Key (ino)=(1) already exists.
vinu=# insert into item values(2,'key',400);
INSERT 0 1
vinu=# insert into item values(3,'cpu',30000);
INSERT 0 1
vinu=# create or replace function f3() returns trigger as 'begin if (new.rate-old.rate)<2000 then raise exception ''values should be greter than 2000 %'',new;end if;return new; end' language 'plpgsql'
vinu-# create or replace function f1() returns trigger as 'begin if (new.rate-old.rate)<2000 then raise exception ''values should be greter than 2000 %'',new;end if;return new; end' language 'plpgsql';
ERROR:  syntax error at or near "create"
LINE 2: create or replace function f1() returns trigger as 'begin if...
        ^
vinu=#                                                                             create or replace function f1() returns trigger as 'begin if (new.rate-old.rate)<2000 then raise exception ''values should be greter than 2000 %'',new;end if;return new; end' language 'plpgsql';
CREATE FUNCTION
vinu=# create trigger t1 before update on item for each row execute procedure f1();
CREATE TRIGGER
vinu=# select * from item;
 ino |  iname  | rate  
-----+---------+-------
   1 | keybord |  1000
   2 | key     |   400
   3 | cpu     | 30000
(3 rows)

vinu=#  update item set rate=1000 where ino=1;
ERROR:  values should be greter than 2000 (1,keybord,1000)
vinu=#  update item set rate=3000 where ino=1;
UPDATE 1
vinu=#                                                                             create or replace function f2() returns trigger as 'begin if old.rate>500 then raise exception ''invalid %'',new;end if;return new; end' language 'plpgsql';CREATE FUNCTION
vinu=# create trigger t2 before delete on item for each row execute procedure f2(); 
CREATE TRIGGER
vinu=# delete from item where ino = 2;
DELETE 0
vinu=# select * from item;                                      ino |  iname  | rate  
-----+---------+-------
   2 | key     |   400
   3 | cpu     | 30000
   1 | keybord |  3000
(3 rows)

vinu=# create trigger t3 after delete on item for each row execute procedure f2();delete 
CREATE TRIGGER
vinu-# delete from item where ino = 2;
ERROR:  syntax error at or near "delete"
LINE 2: delete from item where ino = 2;
        ^
vinu=#                                                                             create or replace function f3() returns trigger as 'begin if old.rate>500 then raise exception ''invalid %'',new;end if;return new; end' language 'plpgsql';
CREATE FUNCTION
vinu=# create trigger t3 after delete on item for each row execute procedure f2();delete 
ERROR:  trigger "t3" for relation "item" already exists
vinu-# create trigger t3 after delete on item for each row execute procedure f3();ERROR:  syntax error at or near "create"
LINE 2: create trigger t3 after delete on item for each row execute ...
        ^
vinu=# create trigger t3 after delete on item for each row execute procedure f3();
ERROR:  trigger "t3" for relation "item" already exists
vinu=# create trigger t4 after delete on item for each row execute procedure f3();
CREATE TRIGGER
vinu=# delete from item where ino = 2;DELETE 0
vinu=# select * from item;
 ino |  iname  | rate  
-----+---------+-------
   2 | key     |   400
   3 | cpu     | 30000
   1 | keybord |  3000
(3 rows)

vinu=# delete from item where ino = 3;
ERROR:  record "new" is not assigned yet
DETAIL:  The tuple structure of a not-yet-assigned record is indeterminate.
CONTEXT:  PL/pgSQL function f2() line 1 at RAISE
vinu=# 


computer09@computer09:~$ sudo su postgres
[sudo] password for computer09: 
postgres@computer09:/home/computer09$ psql
psql (9.3.24)
Type "help" for help.

postgres=# create database paim;
CREATE DATABASE
postgres=# create table item(ino int primary key,iname varchar(60),rate int);
CREATE TABLE
postgres=# insert into item values(1,'keybord',1000);
INSERT 0 1
postgres=# insert into item values(2,'key',100);
INSERT 0 1
postgres=# insert into item values(3,'key',10000);
INSERT 0 1
postgres=# create or replace function f1() returns trigger as 'begin if old.rate>500 then raise exception ''invalid %'',new;end if;return new; end' language 'plpgsql';
CREATE FUNCTION
postgres=# create trigger t1 after delete on item for each row execute procedure f1();
CREATE TRIGGER
postgres=# select * from item;
 ino |  iname  | rate  
-----+---------+-------
   1 | keybord |  1000
   2 | key     |   100
   3 | key     | 10000
(3 rows)

postgres=# delete from item where ino = 2;
DELETE 1
postgres=# delete from item where ino = 3;
ERROR:  record "new" is not assigned yet
DETAIL:  The tuple structure of a not-yet-assigned record is indeterminate.
CONTEXT:  PL/pgSQL function f1() line 1 at RAISE
postgres=# select * from item;
 ino |  iname  | rate  
-----+---------+-------
   1 | keybord |  1000
   3 | key     | 10000
(2 rows)

postgres=# delete from item where ino = 3;
ERROR:  record "new" is not assigned yet
DETAIL:  The tuple structure of a not-yet-assigned record is indeterminate.
CONTEXT:  PL/pgSQL function f1() line 1 at RAISE
postgres=# create or replace function f2() returns trigger as 'begin if old.rate>500 then raise exception ''invalid %'',old;end if;return new; end' language 'plpgsql';
CREATE FUNCTION
postgres=# create or replace function f3() returns trigger as 'begin if old.rate>500 then raise exception ''invalid %'',old;end if;return old; end' language 'plpgsql';
CREATE FUNCTION
postgres=# create trigger t3 after delete on item for each row execute procedure f3();
CREATE TRIGGER
postgres=# insert into item values(2,'key',100);
INSERT 0 1
postgres=# select * from item; ino |  iname  | rate  
-----+---------+-------
   1 | keybord |  1000
   3 | key     | 10000
   2 | key     |   100
(3 rows)

postgres=# delete from item where ino = 2;DELETE 1
postgres=# delete from item where ino = 3;
ERROR:  record "new" is not assigned yet
DETAIL:  The tuple structure of a not-yet-assigned record is indeterminate.
CONTEXT:  PL/pgSQL function f1() line 1 at RAISE
postgres=# create or replace function f4() returns trigger as 'begin if old.rate>500 then raise exception ''invalid %'',old;end if;return old; end' language 'plpgsql';
CREATE FUNCTION
postgres=# create trigger t4 before delete on item for each row execute procedure f4();
CREATE TRIGGER
postgres=# insert into item values(2,'key',100);INSERT 0 1
postgres=# delete from item where ino = 2;DELETE 1
postgres=# delete from item where ino = 3;
ERROR:  invalid (3,key,10000)
postgres=# 

