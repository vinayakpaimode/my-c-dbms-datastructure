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
paimode




Ubuntu on Android! How To Install Ubuntu on Android Without Root (2020):
1. First of all open termux application. it will load some packages and upgrade your stermux supplication while first time. so please wait for a while.

 

Read More ¨C How To Install Kali Linux On Android Without Root (Full Version)

 

2. After complete termux processing now we are ready to run some commands. So just copy my first command from Ubuntu commands text file and paste it into termux application. Press enter.

apt update && apt upgrade

It will update your termux application packages. it will upgrade your termux application. this process is required for installing Ubuntu on your Android Phone.

It will ask for yes or no so press y for (yes) and enter. It will take 2 to 3 minutes to complete.

3. Now your packages and your termux application is upgraded. now just run the second command from my commands text file. it will install Ubuntu packages on your termux application.

pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Ubuntu/ubuntu.sh && bash ubuntu.sh

Just wait for 5 to 10 minutes to install Ubuntu packages with the second command.

4. Now your Ubuntu packages are installed properly after 10 minutes. now we need to run ls command to show your packages. Then you will see start-kali.sh.

we need to run this file so go to my commands text file and copy and paste third command and press enter. It will start your Ubuntu machine terminal.

./start-ubuntu.sh

5. Guys, now you can run all Ubuntu commands in your terminal. but we want to install Ubuntu desktop, it means GUI interface on our Android Phone.

so uys just go to my commands text file and copy the fourth command and paste it in the terminal.

wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/DesktopEnvironment/Apt/Xfce4/de-apt-xfce4.sh && bash de-apt-xfce4.sh

Press enter. It will take 30 to 40 minutes to complete. it will download all GUI environment on your Android phone with VNC support.

7. After all complete. it will ask you for a set password to your VNC Server. Set 6 to 8 characters as a password and press enter.

Done now your terminal part is over. Minimize your termux application. open VNC viewer application.

8. Click on the plus icon to create a profile. it will ask for an IP address and machine name. so put localhost:1 in IP address and put any name for your machine. Click on done.

Now it will ask for a password so put your terminal password into that box and click on continue it will automatically connect your Ubuntu desktop with your VNC viewer software. 

that¡¯s it. now you can run & install any packages with Desktop Environment on your Android Phone.

Uninstall Ubuntu From Android :
If you guys want to Uninstall Ubuntu From Android, follow these steps.

(1) Open termux application. Then go to Localhost mode for that enter this command.

./start-ubuntu.sh

(2) Press enter. Now you need to put uninstall command to uninstall Ubuntu from Android.

wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Uninstaller/Kali/UNI-kali.sh && bash UNI-kali.shwget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Uninstaller/Ubuntu/UNI-ubuntu.sh && bash UNI-ubuntu.sh

FAQs :
Q.1: How we can access Localhost again after exit the termux app?

Answer: Open termux app. Enter this command & press enter.

./start-ubuntu.sh

Q.2: get a port error in VNC viewer what can I do?

Answer: follow the steps.

(1) close termux app from the recent app also.

(2) open termux app again. Type

./start-ubuntu.sh

Press enter.

Now type

vncserver-stop

Press enter.

Now again type

vncserver-start

It will restart your VNC. After that go to event viewer app delete your old machine. Create a new machine using localhost:1 with the same password. Done.

Q.3: Commands showing an error?

Answer: Download my Ubuntu text file from the above link. Because sometimes when we copy Commands from the website it¡¯s got an error. Copy from a text file. It will work fine.

Q.4: This trick will work on non-rooted device?

Answer: Yes you can



