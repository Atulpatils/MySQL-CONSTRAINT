/*
### SQL constrains
1.Not Null
2.Unique
3.Primary Key
4.Foreign key
5.Check 
6.Default
7.Index
*/
use customers;

create table student(
id int not null ,
first_name varchar(25) not null,
last_name varchar(25)  not null,
age int

);
desc student;
alter table student modify age int not null;



desc person;
create table person(
id int unique null,
first_name varchar(19) not null ,
last_name varchar(19) unique not null,
age int not null
);
desc person;

insert into person values (1,'name','sirname',24);
insert into person values(2,'manoj','surname',25),
(3,'june','engine',27);
select * from person;
update person set last_name = 'ambuskar' where id = 1;
select * from person;
update person set first_name = 'mana' where id = 2 ;
select * from person ;
alter table person
add unique (first_name);

desc person;
select * from person;
describe person;
alter table person
add constraint uc_person unique (age,first_name);
desc person;

alter table person
drop index uc_person;


## Primary key
create table person1(
id int not null,
first_name  varchar(25) not null,
last_name varchar(23),
age int,
constraint pk_person primary key(id,last_name)
);
desc person1;
alter table person1 
drop primary key;

desc person1;
alter table person1 
add primary key(id);

desc person1;
alter table person1
drop primary key;

desc person1;
desc person;

show databases;
drop table person;
show tables;
use customers;
create table person(
id int not null,
first_name varchar(20) not null,
last_name varchar(20)not null,
age int
);
desc person;

alter table person
add primary key(id);
desc person;
drop table person;
alter table person
add constraint pk_constraint primary key(id,age);
describe person;
alter table person
drop primary key;
desc person; 
drop table person;
## Foreign key

create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
salary int,
primary key(id)
);
desc person;
show tables;
create table department(
id int not null,
dept_id int not null,
dept_name varchar (25),
primary key (dept_id)
);
desc department;
alter table department
add foreign key(id) references person(id);
desc department;


drop table department;
drop table person;

## check constraints


create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
salary int,
primary key(id),
check(salary<50000)
);
desc person;

insert into person value(1,'atula','patil',28,49000);
delete  from person where id=1;
select * from person;

## Default contsrints
show tables;
drop table person;
show tables;
create table person (
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
city_name varchar(25) default'Pune'
);
drop table person;
desc person;
alter table person
alter city_name drop default;
desc person;


## Indexes 

/*
An index constraint can be created using the CREATE INDEX statement.
To create index contsints you specify the name of index,the table and 
column that the index will be created on, and the type of index to be 
created (e.g., unique or non-unique).

*/
show databases;

use customers;
show tables;
select * from person;
create index index_city_name
on person(city_nane);

desc person;

drop table student;
show tables;

create table student(
id int not null,
first_name varchar(25),
last_name varchar(25),
age int
);
desc student;
create index index_age
on student(age);

create index index_age_first_name
on student(age,first_name);





