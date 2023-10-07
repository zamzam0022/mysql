create database zam;
use zam;
create table student(
sid int not null unique auto_increment,
sname varchar (30) not null,
scity varchar(30) not null,
age varchar(20)

);
insert into student(sname  , scity  , age) values("ebad" , "malashia" , "52");
select * from student;

create table course(
cid int not null ,
cname varchar (30)not null,
cstatus varchar(30) not null

);
insert into course(cid , cname , cstatus)values("5" , "laraval" , "active");
select * from course;
select * from student as s left join  course as c on  s.sid = c.cid;
select * from student cross join course;
alter table student add stud_of varchar(30) not null;
 alter table student add faculty varchar(30) not null;
 update student set stud_of ='7' where sid = '7';
 update student set faculty ='ebad' where sid = '6';
 update student set faculty = 'zamzam' where sid = '4';
 select T1 .sname as teacher, T2.sname from student as T1 inner join student as T2 on t1.sid= t2.stud_of;