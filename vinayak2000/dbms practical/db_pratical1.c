computer09@computer09:~$ sudo su postgres
[sudo] password for computer09: 
postgres@computer09:/home/computer09$ psql
psql (9.3.24)
Type "help" for help.

postgres=# create database vinayak;
CREATE DATABASE
postgres=# \connect vinayak;
You are now connected to database "vinayak" as user "postgres".
vinayak=# create table doctor(dno int primary key,dname varchar(20),city varchar(20));
CREATE TABLE
vinayak=# create table patient(pno int primary key,pat_name varchar(20),city varchar(20),disease varchar(20));
CREATE TABLE
vinayak=# create table doc_pat(dno references doctor,pno references patient);ERROR:  syntax error at or near "references"
LINE 1: create table doc_pat(dno references doctor,pno references pa...
                                 ^
vinayak=# create table doc_pat(dno 'references' doctor,pno references patient);
ERROR:  syntax error at or near "'references'"
LINE 1: create table doc_pat(dno 'references' doctor,pno references ...
                                 ^
vinayak=# create table doc_pat(dno references to doctor,pno references to patient); 
ERROR:  syntax error at or near "references"
LINE 1: create table doc_pat(dno references to doctor,pno references...
                                 ^
vinayak=# create table doc_pat(dno references from doctor,pno references from patient);
ERROR:  syntax error at or near "references"
LINE 1: create table doc_pat(dno references from doctor,pno referenc...
                                 ^
vinayak=# create table doc_pat(dno int references from doctor,pno int references from patient);
ERROR:  syntax error at or near "from"
LINE 1: create table doc_pat(dno int references from doctor,pno int ...
                                                ^
vinayak=# create table doc_pat(dno int references doctor,pno int references patient);
CREATE TABLE
vinayak=# create table doct_pat(dno references from doctor,pno references from patient,fee int);
ERROR:  syntax error at or near "references"
LINE 1: create table doct_pat(dno references from doctor,pno referen...
                                  ^
vinayak=# create table doc_pat(dno int references doctor,pno int references patientfee int);
ERROR:  syntax error at or near "int"
LINE 1: ...no int references doctor,pno int references patientfee int);
                                                                  ^
vinayak=# create table doc_pat(dno int references doctor,pno int references patient,fee int);
ERROR:  relation "doc_pat" already exists
vinayak=# create table doct_pat(dno int references doctor,pno int references patient,fee int);
CREATE TABLE
vinayak=# insert into doctor values(1,'mahesh','mumbai');
INSERT 0 1
vinayak=# insert into doctor values(2,'vinayak','pune');
INSERT 0 1
vinayak=# insert into doctor values(3,'ram','pune');
INSERT 0 1
vinayak=# insert into doctor values(4,'sham','nager');
INSERT 0 1
vinayak=# insert into doctor values(5,'rahul','kolahapur');
INSERT 0 1
vinayak=# insert into patient values(1,'dhondu','kolahapur','maleria');
INSERT 0 1
vinayak=# insert into patient values(2,'vinu','kanhur','tv');
INSERT 0 1
vinayak=# insert into patient values(3,'shubhu','visapur','cold');
INSERT 0 1
vinayak=# insert into patient values(4,'java','takli','fever');
INSERT 0 1
vinayak=# insert into patient values(5,'python','bhalvni','fever');
INSERT 0 1
vinayak=# create table patient(pno int primary key,pat_name varchar(20),address varchar(20),disease varchar(20));
ERROR:  relation "patient" already exists
vinayak=# create table patients(pno int primary key,pat_name varchar(20),address varchar(20),disease varchar(20));
CREATE TABLE
vinayak=# insert into patients values(1,'dhondu','kolahapur','maleria');INSERT 0 1
vinayak=# insert into patients values(2,'vinu','kanhur','tv');INSERT 0 1
vinayak=# insert into patients values(3,'shubhu','visapur','cold');INSERT 0 1
vinayak=# insert into patients values(4,'java','takli','fever');INSERT 0 1
vinayak=# insert into patients values(5,'python','bhalvni','fever');INSERT 0 1
vinayak=# select * from doctor
vinayak-# ;
 dno |  dname  |   city    
-----+---------+-----------
   1 | mahesh  | mumbai
   2 | vinayak | pune
   3 | ram     | pune
   4 | sham    | nager
   5 | rahul   | kolahapur
(5 rows)

vinayak=# select * from patients;
 pno | pat_name |  address  | disease 
-----+----------+-----------+---------
   1 | dhondu   | kolahapur | maleria
   2 | vinu     | kanhur    | tv
   3 | shubhu   | visapur   | cold
   4 | java     | takli     | fever
   5 | python   | bhalvni   | fever
(5 rows)

vinayak=# select * from doct_pat;
 dno | pno | fee 
-----+-----+-----
(0 rows)

vinayak=# insert into doct_pat values(1,1,1000);
INSERT 0 1
vinayak=# insert into doct_pat values(2,2,2000);
INSERT 0 1
vinayak=# insert into doct_pat values(6,2,2000);
ERROR:  insert or update on table "doct_pat" violates foreign key constraint "doct_pat_dno_fkey"
DETAIL:  Key (dno)=(6) is not present in table "doctor".
vinayak=# insert into doct_pat values(3,3,2000);
INSERT 0 1
vinayak=# insert into doct_pat values(4,4,3000);
INSERT 0 1
vinayak=# insert into doct_pat values(5,5,3000);
INSERT 0 1
vinayak=# insert into doct_pat values(5,4,4000);
INSERT 0 1
vinayak=# insert into doct_pat values(3,4,4000);
INSERT 0 1
vinayak=# insert into doct_pat values(2,1,4000);
INSERT 0 1
vinayak=# insert into doct_pat values(3,4,4000);
INSERT 0 1
vinayak=# select * from doct_pat;
 dno | pno | fee  
-----+-----+------
   1 |   1 | 1000
   2 |   2 | 2000
   3 |   3 | 2000
   4 |   4 | 3000
   5 |   5 | 3000
   5 |   4 | 4000
   3 |   4 | 4000
   2 |   1 | 4000
   3 |   4 | 4000
(9 rows)

vinayak=# select * from doctor
;
 dno |  dname  |   city    
-----+---------+-----------
   1 | mahesh  | mumbai
   2 | vinayak | pune
   3 | ram     | pune
   4 | sham    | nager
   5 | rahul   | kolahapur
(5 rows)

vinayak=# select * from patents
;
ERROR:  relation "patents" does not exist
LINE 1: select * from patents
                      ^
vinayak=# select * from patients
;
 pno | pat_name |  address  | disease 
-----+----------+-----------+---------
   1 | dhondu   | kolahapur | maleria
   2 | vinu     | kanhur    | tv
   3 | shubhu   | visapur   | cold
   4 | java     | takli     | fever
   5 | python   | bhalvni   | fever
(5 rows)

vinayak=# select * from doctor;
 dno |  dname  |   city    
-----+---------+-----------
   1 | mahesh  | mumbai
   2 | vinayak | pune
   3 | ram     | pune
   4 | sham    | nager
   5 | rahul   | kolahapur
(5 rows)

vinayak=# select dname,city from doctor,patients,doct_pat where where doctor.dno=doct_pat.dno and patients pno=doct_pat.pno and dname='ram';
ERROR:  syntax error at or near "where"
LINE 1: ...ct dname,city from doctor,patients,doct_pat where where doct...
                                                             ^
vinayak=# select dname,city from doctor,patients,doct_pat where doctor.dno=doct_pat.dno and patients pno=doct_pat.pno and dname='ram';
ERROR:  syntax error at or near "pno"
LINE 1: ...ct_pat where doctor.dno=doct_pat.dno and patients pno=doct_p...
                                                             ^
vinayak=# select dname,city from doctor,patients,doct_pat where doctor.dno=doct_pat.dno and patients.pno=doct_pat.pno and dname='ram';
 dname | city 
-------+------
 ram   | pune
 ram   | pune
 ram   | pune
(3 rows)

vinayak=# select count(pno) from doctor,patients,doct_pat where doctor.dno=doct_pat.dno and patients pno=doct_pat.pno and dname='ram';
ERROR:  syntax error at or near "pno"
LINE 1: ...ct_pat where doctor.dno=doct_pat.dno and patients pno=doct_p...
                                                             ^
vinayak=# select count(pno) from doctor,patients,doct_pat where doctor.dno=doct_pat.dno and patients.pno=doct_pat.pno and dname='ram';
ERROR:  column reference "pno" is ambiguous
LINE 1: select count(pno) from doctor,patients,doct_pat where doctor...
                     ^
vinayak=# select count(pat_name) from doctor,patients,doct_pat where doctor.dno=doct_pat.dno and patients.pno=doct_pat.pno and dname='ram';
 count 
-------
     3
(1 row)

vinayak=# select dname,city from doctor,patients,doct_pat where doctor.dno=doct_pat.dno and patients pno=doct_pat.pno and pat_name='python';
ERROR:  syntax error at or near "pno"
LINE 1: ...ct_pat where doctor.dno=doct_pat.dno and patients pno=doct_p...
                                                             ^
vinayak=# select dname,city from doctor,patients,doct_pat where doctor.dno=doct_pat.dno and patients.pno=doct_pat.pno and pat_name='python';
 dname |   city    
-------+-----------
 rahul | kolahapur
(1 row)

vinayak=# insert into doct_pat values(4,5,3000);
INSERT 0 1
vinayak=# insert into doct_pat values(5,5,3000);
INSERT 0 1
vinayak=# select dname,city from doctor,patients,doct_pat where doctor.dno=doct_pat.dno and patients.pno=doct_pat.pno and pat_name='python';
 dname |   city    
-------+-----------
 rahul | kolahapur
 sham  | nager
 rahul | kolahapur
(3 rows)

vinayak=# select dname,city from doctor,patients,doct_pat where doctor.dno=doct_pat.dno and patients.pno=doct_pat.pno and pat_name='python';


