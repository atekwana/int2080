-- inserting data into parent table
insert
	into
	classwork.parent (
    last_name,
	first_name,
	age
)
values 
    ('John',
'Doe',
75),
    ('Adams',
'Kilby',
35),
    ('Soba',
'Ury',
40),
    ('Ike',
'Ife',
57);
-- inserting data into child_1 table
insert
	into
	classwork.child_1 (
    last_name,
	first_name,
	age
)
values
    ('John',
'Paul',
40),
    ('Adams',
'Bon',
23),
    ('Soba',
'Lip',
3),
    ('Ike',
'Ade',
6);
-- inserting data into child_2 table
insert
	into
	classwork.child_2 (
    last_name,
	first_name,
	age
)
values
    ('John',
'Ube',
5),
    ('Adams',
'Opp',
43),
    ('Soba',
'Huy',
36),
    ('Ike',
'Olu',
9);
