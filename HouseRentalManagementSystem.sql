Create Database LandLordDatabase;

Drop Database LandLordDatabase;
Use LandLordDatabase;


ALTER TABLE LandLord
Add  address varchar
drop table LandLord
select registration.email from registration inner join LandLord  on LandLord.Email=registration.email
create table registration
(
   username varchar(50) not null,
   pass varchar(50) not null,
   fName varchar(50) not null,
   lName varchar(50) not null,
   address  varchar(50) not null,
   email  varchar(50) not null
)

select * from registration
DELETE FROM registration WHERE pass=12345;
drop table LandLord

insert into LandLord(Email,Name,Occupation,MobileNo)
values('mubina@gmail.com', 'Mubina Ashrafi','Computer Engineer', '01948984316'),
      ('sadia@gmail.com', 'Sadia Nawsin', 'Computer Engineer', '01922984316')

insert into LandLord(Email,Name,Occupation,MobileNo)
values('Tasneem_021@gmail.com', 'Tasneem Rahman', 'HRM officer,Sharmin group', '01937984316'),
	  ('nur_jyoti@gmail.com', 'jyoti', 'Fashion Designer', '01722674316'),
	  ('Jahin018@gmail.com', 'Jahin Tasnia', 'Medical Officer, Holy Family Hospital ', '01798984316'),
	  ('ZubairAfri@gmail.com', 'Jubayer mahmud', 'Assistant Manager,Prime Bank', '015332984316')

insert into LandLord(Email,Name,Occupation,MobileNo)
values('Tasneem_021@gmail.com', 'Tasneem Rahman', 'HRM officer,Sharmin group', '01937984316')

select * from LandLord
       
CREATE TABLE Apartment
(
ApartmentNo varchar(50) PRIMARY KEY,
Email varchar(50) FOREIGN KEY REFERENCES LandLord(Email) ON DELETE SET NULL,
HouseName varchar(50) not null,
Description varchar(50) null,
rent int,
type varchar(50) null,
Address varchar(50) not null,
utilityBill int,
gasBill int,
waterBill int,
city varchar(50) null
)

SELECT Tenants.ApartmentNo FROM Apartment left join Tenants ON Apartment.ApartmentNo<>Tenants.ApartmentNo  where Tenants.ApartmentNo=null

ALTER TABLE Apartment
drop COLUMN Email 
ALTER TABLE Tenants
drop COLUMN Email

select * from Apartment
select * from Tenants
drop table apartment

ALTER TABLE TenantsPay
ALTER COLUMN ApartmentNo int

SELECT distinct * from Apartment inner join Tenants ON Apartment.ApartmentNo!=Tenants.ApartmentNo

insert into Apartment(ApartmentNo,HouseName,Description,rent,type,Address,utilityBill,gasBill,waterBill,city)
values('3rd north','Nir', 'four rooms',15000, 'family', 'H/N-369 shyamoli', 10000, 500, 6000, 'Dhaka')

insert into Apartment(ApartmentNo,HouseName,Description,rent,type,Address,utilityBill,gasBill,waterBill,city)
values(1,'Nir', 'four rooms',15000, 'family', 'H/N-369 shyamoli', 10000, 500, 6000, 'Dhaka')
CREATE TABLE LandLord
(
Email varchar(50) PRIMARY KEY not null,
Name varchar(50) not null,
Occupation varchar(50) null,
MobileNo varchar(50) not null 
)
insert into Apartment(ApartmentNo,Email,HouseName,Description,rent,type,Address,utilityBill,gasBill,waterBill,city)
values(3,'mubina@gmail.com','nir', 'four rooms',15000, 'family', 'H/N-369 shyamoli', 10000, 500, 6000, 'Dhaka')
insert into Apartment(ApartmentNo,HouseName,Description,rent,type,Address,utilityBill,gasBill,waterBill,city)
values(3,'Nir', 'four rooms',15000, 'family', 'H/N-369 shyamoli', 10000, 500, 6000, 'Dhaka')
insert into Apartment(ApartmentNo,Email,HouseName,Description,rent,type,Address,utilityBill,gasBill,waterBill,city)
values(1,'sadia@gmail.com','nir', 'four rooms',15000, 'family', 'H/N-369 shyamoli', 10000, 500, 6000, 'Dhaka')

select * from Apartment

DELETE FROM Apartment WHERE ApartmentNo=7;

ALTER TABLE Apartment
ADD totalbill int

CREATE TABLE MaintainanceFee
(
  MainNo int PRIMARY KEY,
  ApartmentNo varchar(50) FOREIGN KEY REFERENCES Apartment(ApartmentNo) ON DELETE SET NULL,
  MainDescription varchar(50) null,
  Amount int not null,
  date varchar(20) not null,
)
Drop table MaintainanceFee
select * from MaintainanceFee

insert into MaintainanceFee(MainNo,MainDescription,Amount,date)
values(1,'Lift problem', 500,'1994-05-18')



CREATE TABLE Tenants
(

  ApartmentNo varchar(50) FOREIGN KEY REFERENCES Apartment(ApartmentNo) ON DELETE SET NULL,
  Email varchar(50) FOREIGN KEY REFERENCES LandLord(Email) ON DELETE SET NULL,
  TEmail varchar(50) not null,
  TenantName varchar(50) not null,
  TOccupation varchar(50) null,
  TphoneNo varchar(50) PRIMARY KEY not null,
  TenantType varchar(50) not null
)

drop table Tenants
DELETE FROM Tenants WHERE TphoneNo=01948984316;

insert into Tenants(ApartmentNo, Email,TEmail,TenantName,TOccupation,TphoneNo,TenantType)
values(2,'mubina@gmail.com','sadia@gmail.com', 'Mubina Ashrafi','Computer Engineer', '01922588410','Bechalor')

select * from Tenants

CREATE TABLE TenantsPay
(
BillID int PRIMARY KEY,
ApartmentNo varchar(50) FOREIGN KEY REFERENCES Apartment(ApartmentNo) ON DELETE SET NULL,
TphoneNo varchar(50)  FOREIGN KEY REFERENCES Tenants(TphoneNo) ON DELETE SET NULL,
rent int not null,
date varchar(20) not null,
utilityBill int,
gasBill int,
waterBill int,
totalbill int
)
select * from TenantsPay
select * from Apartment
select * from registration
update TenantsPay set totalbill=(rent+utilityBill+gasBill+waterBill) where TphoneNo = 01721458181
update Apartment set totalbill=(rent+utilityBill+gasBill+waterBill) where ApartmentNo = 1
select * from Apartment
DELETE FROM Apartment WHERE ApartmentNo=1;
DELETE FROM Tenants WHERE TphoneNo=01721458181;
DELETE FROM registration WHERE pass=12345;

insert into TenantsPay(DuePay,rent,date,utilityBill,gasBill,waterBill)
values(900,15000, '1994-05-18', 10000, 500, 6000)

select * from TenantsPay