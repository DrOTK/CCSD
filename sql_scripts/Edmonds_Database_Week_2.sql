create database Dealership;

use Dealership;

create table Car
(
	Make varchar(20),
	Model varchar(20) primary key,
	price decimal,
	mpgc int,
	mpgh int
);


insert into Car values('Nissan', 'Maxima', 33270.00, 21, 30);
insert into Car values('Tesla', 'Model_S', 74500.00, 102, 105);
insert into Car values('Hyundai', 'Genesis', 39249.00, 16, 26);
insert into Car values('Audi', 'R8', 164900.00, 14, 22);


describe Dealership;

select * from Cars where mpgc >= 15;