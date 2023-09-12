create database sep_4th;

use sep_4th;
create table  Lenskard_Info(ID int , brand_name varchar(25), CREATED_AT varchar(20) , MODIFIED_AT varchar(20));

insert into Lenskard_Info values(1 , 'Ookley' , '04/09/2023' , now());
insert into Lenskard_Info values(2 , 'RayBan' , '05/09/2023' , now());
insert into Lenskard_Info values(1 , 'Titan' , '06/09/2023' , now());

select * from Lenskard_Info;
ALTER table Lenskard_Info rename as Lenskart_Info; 
select * from Lenskart_Info;

SELECT * FROM lenskart_info;

ALTER table lenskart_info ADD column price int;
update lenskart_info set price =  3500 where id = 1;
update lenskart_info set price = 4300 where brand_name = 'Titan';
update lenskart_info set price = 5500 where id = 2;

insert into lenskart_info values(3 , 'Vicent Chase' , now() , now() , 1200);
insert into Lenskart_Info values(4 , 'Fastrack' , now() , now() , 2500);
insert into lenskart_info values(5 , 'Sonata' , now() , now() , 2300);
insert into Lenskart_Info values(6 , 'Boat' , now() , now() , 1500);

select * from lenskart_info  where  brand_name like  'R%';

create table  lenskart_dup as select * from lenskart_info;

select * from lenskart_dup;
ALTER table lenskart_dup add column simp int;
update lenskart_dup set simp = 5 where id =4;
update lenskart_dup set simp = 6 where id =1; 
update lenskart_dup set simp = 4 where id =2;
update lenskart_dup set simp = 2 where id =5;
update lenskart_dup set simp = 2 where id =6;

alter table lenskart_dup drop column created_at;
alter table lenskart_dup add column created_at timestamp;
update lenskart_dup set created_at = now() where id = 1;
update lenskart_dup set created_at = "2023-09-07" where id = 4;
update lenskart_dup set created_at = now() where id = 2;
update lenskart_dup set created_at = "2023-09-07 12:37:02";



-- AND ,OR ,Not
select brand_name , simp from lenskart_dup where brand_name = "Sonata" AND simp = 2 ;
select brand_name , simp from lenskart_dup where brand_name = "Sonata" OR simp = 5;
select brand_name , simp from lenskart_dup where NOT brand_name = "Sonata" OR simp = 5;


-- IN Operator
select * from lenskart_dup where simp IN(6 , 5 , 4);

select * from lenskart_dup;

 -- LIKE
select * from lenskart_dup where brand_name like 'O%';
select * from lenskart_dup where brand_name like '%t%';

-- REGEXP

select * from lenskart_dup where brand_name REGEXP 'a[st]';






-- Primary Key
create table scientific_calci (ID int primary key , noOf_Buttons int , brand_name varchar(20) not null , chargable varchar(10) ,price int check(price>500) ,calci_name varchar(20) default 'Scientific Caculator' );
insert into scientific_calci values(1 , 100 , 'Casio' , 'Yes' , 516 , '');
insert into scientific_calci values(2 , 110 , 'Cello' , 'Yes' , 529 , default);
insert into scientific_calci values(3 , 85 , 'Baaaado' , 'No' , 841 , default);
insert into scientific_calci values(4 , 75 , 'Vander' , 'Yes' , 985 , default);
insert into scientific_calci values(5 , 110 , 'Santerr' , 'No' , 745 , default);
insert into scientific_calci values(6 , 121 , 'Virgo' , 'Yes' , 645 , default);
insert into scientific_calci values(7, 109 , 'Misto' , 'No' , 545 , default);
insert into scientific_calci values(8 , 108 , 'Mirogoo' , 'No' , 985 , default);
insert into scientific_calci values(9 , 107 , 'Janjger' , 'No' , 542 , default);
insert into scientific_calci values(10 , 102 , 'hasdiki' , 'Yes' , 745 , default);

SELECT * FROM sep_4th.scientific_calci;

create table normal_calci(ID int primary key , brand_name varchar(20) not null , chargable varchar(10) ,price int check(price>300) ,calci_name varchar(20) default 'Normal Caculator' , n_id int ,foreign key (n_id) references scientific_calci(ID) );
insert into normal_calci values(1 , 'Brando' , 'No' , 350 , default , 1 );
insert into normal_calci values(7 , 'Navgator' , 'Yes' , 550 , default , 2 );
insert into normal_calci values(6 , 'Brando' , 'No' , 650 , default , 3 );
insert into normal_calci values(8 , 'Jakard' , 'Yes' , 699 , default , 4 );
insert into normal_calci values(9 , 'Karanki' , 'Yes' , 691 , default , 5 );
insert into normal_calci values(10 , 'Saturn' , 'No' , 684 , default , 6 );
insert into normal_calci values(11, 'Olnoli' , 'Yes' , 612 , default , 7 );
insert into normal_calci values(12 , 'Arnold' , 'No' , 741 , default , 8 );
insert into normal_calci values(13, 'Janaki' , 'Yes' , 753 , default , 9 );

select * from normal_calci;

create table phone_calci(ID int primary key , brand_name varchar(20) not null , chargable varchar(10) ,price int check(price>30000) ,calci_name varchar(20) default 'Phone Caculator', p_id int ,foreign key (p_id) references normal_calci(ID));

insert into phone_calci values(9 , 'Samsung' , 'Yes' , 31000 , default ,1);
insert into phone_calci values(10 , 'MI' , 'Yes' , 30001 , default ,7);
insert into phone_calci values(11 , 'Apple' , 'Yes' , 150000 , default ,6);
insert into phone_calci values(12 , '1+' , 'Yes' , 35000 , default ,8);
insert into phone_calci values(13 , 'Lenova' , 'Yes' , 30001 , default ,9);
insert into phone_calci values(14 , 'Micromax' , 'Yes' , 35002 , default ,10);
insert into phone_calci values(15 , 'kindle' , 'Yes' , 41000 , default ,11);
insert into phone_calci values(16 , 'xavin' , 'Yes' , 42000 , default ,12);
insert into phone_calci values(17 , 'Label' , 'Yes' , 32000 , default ,13);


select * from phone_calci;

create table laptop_calci(ID int primary key , brand_name varchar(20) not null , RAM int ,price int check(price>30000) ,calci_name varchar(20) default 'Laptop Caculator' , l_id int , foreign key(l_id)references phone_calci (ID));

insert into laptop_calci values( 1 , 'Lenova' , 3 , 51000 , default , 9 );
insert into laptop_calci values( 2 , 'Dell' , 4 , 59560 , default , 10 );
insert into laptop_calci values( 5 , 'HCL' , 5 , 61548 , default , 11 );
insert into laptop_calci values( 6 , 'Mac' , 4 , 54123 , default , 12);
insert into laptop_calci values( 7 , 'Sunder' , 4 , 50001 , default , 13);
insert into laptop_calci values( 8 , 'Marathon' , 4 , 51152 , default , 14);
insert into laptop_calci values( 9 , 'Madst' , 3 , 54122 , default , 15);
insert into laptop_calci values( 10 , 'Linkme' , 5 , 100000 , default , 16);
insert into laptop_calci values( 15 , 'Mac' , 4 , 51422 , default , 17);

select * from laptop_calci;