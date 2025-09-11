-- select database
use classwork;

drop table if exists parent;
-- creating the father table
create table parent (
	last_name VARCHAR(50) not null,
	first_name VARCHAR(50) not null,
	age INT,
	primary key (last_name),
	index idx_first_name(first_name),
	index idx_age(age)
);

select
	*
from
	parent
as last_name;

drop table if exists child_1;
-- create child table
create table child_1 (
	last_name VARCHAR(50) not null,
	first_name VARCHAR(50) not null,
	age INT,
	primary key(first_name),
	foreign key(last_name) references parent(last_name),
	index idx_age(age)
);

select
	*
from
	child_1
as last_name;

drop table if exists child_2;
-- create child table
create table child_2 (
	last_name VARCHAR(50) not null,
	first_name VARCHAR(50) not null,
	age INT,
	primary key(first_name),
	foreign key(last_name) references parent(last_name),
	index idx_age(age)
);

select
	*
from
	child_2
as last_name;
