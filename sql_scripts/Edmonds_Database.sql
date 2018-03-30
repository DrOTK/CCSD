create database Dealership;

use Dealership;

create table Car
(
	ID int primary key AUTO_INCREMENT,
	Make varchar(20),
	Model varchar(20),
	Price decimal,
	mpgc int,
	mpgh int
);



ALTER TABLE Car AUTO_INCREMENT = 1;

insert into Car (Make, Model, Price, mpgc, mpgh) values('Nissan', 'Maxima', 33270.00, 21, 30);
insert into Car (Make, Model, Price, mpgc, mpgh) values('Tesla', 'Model_S', 74500.00, 102, 105);
insert into Car (Make, Model, Price, mpgc, mpgh) values('Hyundai', 'Genesis', 39249.00, 16, 26);
insert into Car (Make, Model, Price, mpgc, mpgh) values('Audi', 'R8', 164900.00, 14, 22);


describe Dealership;

