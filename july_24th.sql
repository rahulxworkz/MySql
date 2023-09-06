use july_24th;

create table laptop(id int , laptop_name varchar(20) , price bigint , batch_number bigint , processor varchar(30));
drop table laptop;

CREATE TABLE SportsInfo (SportID INT ,SportName VARCHAR(255),Season VARCHAR(50),StartDate VARCHAR(54),EndDate VARCHAR(45), HostCity VARCHAR(255),
    HostCountry VARCHAR(255),GoldMedalists VARCHAR(255),SilverMedalists VARCHAR(255));


INSERT INTO sportsinfo VALUES(1, 'Swimming', 'Summer', '2022-07-10', '2022-07-18', 'Los Angeles', 'USA', 'Michael Phelps' , 'Brettlee' , 'Boss');
INSERT INTO SportsInfo VALUES (2, 'Basketball', 'Summer', '2022-07-25', '2022-08-07', 'Paris', 'France', 'USA', 'France', 'Shoibh' , 'Kichcha');
INSERT INTO SportsInfo VALUES (3, 'Soccer', 'Summer', '2022-07-21', '2022-08-07', 'Madrid', 'Spain', 'Brazil', 'Spain' , 'Akthar' , 'Salman' );
INSERT INTO SportsInfo VALUES (4, 'Winter Sports', 'Winter', '2022-02-04', '2022-02-20', 'Beijing', 'China', 'Norway' , 'Anandan' , 'Sharukh');
INSERT INTO SportsInfo VALUES (5, 'Athletics', 'Summer', '2022-07-30', '2022-08-08', 'Tokyo', 'Japan', 'USA', 'Jamaica' , 'Gayle' , 'Ram MohanDas');
INSERT INTO SportsInfo VALUES  (6, 'Tennis', 'Summer', '2022-07-28', '2022-08-08', 'London', 'UK', 'Novak Djokovic' , 'Braistow' , 'MS Dhoni');
INSERT INTO SportsInfo VALUES (7, 'Gymnastics', 'Summer', '2022-07-15', '2022-07-24', 'Rio de Janeiro', 'Brazil', 'Simone Biles', 'Sunisa Lee');
INSERT INTO SportsInfo VALUES  (8, 'Skiing', 'Winter', '2022-02-09', '2022-02-20', 'Innsbruck', 'Austria', 'Aksel Lund Svindal', 'Marcel Hirscher');
INSERT INTO SportsInfo VALUES (9, 'Boxing', 'Summer', '2022-07-24', '2022-08-07', 'Las Vegas', 'USA', 'Canelo Alvarez', 'Anthony Joshua');

ALTER TABLE SportsInfo ADD COLUMN BronzeMedalists VARCHAR(255);

SELECT * FROM SportsInfo;
ALTER TABLE SportsInfo RENAME COLUMN SportID TO Id; 

UPDATE SportsInfo SET BronzeMedalists = 'Australia' WHERE id = 7;
SELECT * FROM july_24th.sportsinfo;
UPDATE  sportsinfo SET  BronzeMedalists = 'Giga Sher' where id = 8;
UPDATE sportsinfo SET BronzeMedalists = 'Simon Laura' where id = 9;
UPDATE sportsinfo SET BronzeMedalists = 'Andrew Tate' where id = 10;
