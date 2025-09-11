drop table if exists classwork.child_1;
drop table if exists classwork.child_2;
drop table if exists classwork.parent;

-- creating the father table
create table classwork.parent (
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
	classwork.parent;

-- create child table
create table classwork.child_1 (
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
	classwork.child_1;

-- create child table
create table classwork.child_2 (
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
	classwor;k.child_2;
