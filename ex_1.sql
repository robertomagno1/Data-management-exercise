# example of basic concept of SQL :: 

create table Employee (
	ID character(6) primary key,
	Name character(20) not null,
	Surname character(20) not null,
	Depart character(15),
	Salary numeric(9) default 0,
	City character(15),
	foreign key(Depart) references
		Department(DepName),
	unique (Surname,Name)
)