create database sep_10th;

use sep_10th;
drop table interview;
create table interview(id int , positions varchar(30) ,no_of_positions int , interview_type varchar(15) , package bigint);

insert into interview values(1 , 'Developer' , 30 , 'Offline' ,450000),
                            (2 , 'Software Developer' , 25 , 'Online' ,460000) ,
                             (3 , 'JAVA Developer' , 27 , 'GMeet' ,500000) ,
                             (4 , 'Tester' , 15 , 'WalkIn' ,540000) ,
                             (5 , 'Software Tester' , 10 , 'Campus' ,480000) ,
							 (6 , 'Data Analyst' , 26 , 'Offline' ,360000) ,
                             (7 , 'Typewriter' , 5 , 'Offline' ,250000) ,
                             (8 , 'Softwre Engineer' , 32 , 'Online' ,465000) , 
                             (9 , 'Automation Engineer' , 9 , 'Gmeet' ,365000) ,
                             (10 , 'Frontend Developer' , 15 , 'WalkIn' ,540000) ,
                             (11 , 'Backend Developer' , 17 , 'Campus' ,380000) ,
                             (12 , 'React Developer' , 7 , 'Offline' ,570000) ,
                             (13 , 'Developer' , 30 , 'Offline' ,450000),
                             (14 , 'Software Developer' , 22 , 'Online' ,420000) ,
                             (15 , 'Java Developer' , 12 , 'Campus' ,430000) ,
                             (16 , 'Tester' , 15 , 'WalkIn' ,540000) ,
                             (17 , 'Data Analyst' , 26 , 'Offline' ,360000) ,
                             (18 , 'Softwre Engineer' , 32 , 'Online' ,465000) ,
                             (10 , 'Frontend Developer' , 15 , 'WalkIn' ,540000) ,
                             (20 , 'Full Stack Developer' , 5 , 'Offline' , 2500000);
                             
select * from interview;

-- AGGREGATE :
select count(no_of_positions) from interview;
select sum(package) from interview;
select max(package) from interview;
select min(package) from interview;
select avg(package) from interview;


select sum(package) from interview;