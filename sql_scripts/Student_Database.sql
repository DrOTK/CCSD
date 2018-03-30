# create a database
create database OurBoard;
	
# select the database
use OurBoard;

#create a sql table
create table Students
(	
	student_id int primary key AUTO_INCREMENT,
	firstName varchar( 50 ),
	lastName varchar( 50 )
);

insert into Students values(777,'Alandro','Williams');
insert into Students values(666,'John','Teefy');
insert into Students values(101,'Julien','Esposito');
insert into Students values(888,'Mitch','Rowley');

#This is how we inspect the structure of our table
describe Students;

#Check content
select * from Students;