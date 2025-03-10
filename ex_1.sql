# example of basic concept of SQL :: 

create table Employee (
	ID character(6) primary key,
	Name character(20) not null,
	Surname character(20) not null,
	Depart character(15),
	Salary numeric(9) default 0, # if there's an exeption where there's no value for this... set automatically to zero ... 
	City character(15),
	foreign key(Depart) references
		Department(DepName),
	unique (Surname,Name)
)

# unique vs forein key : unique is on a pair of columns ... two peopole on the same app 


 ##Predefined domains
### – Character:
char(n)or character(n)
varchar(n) (or char varying(n))
nchar(n)and nvarchar(n) (or nchar varying(n)) (UNICODE)
## – Numeric:
# int or  integer, smallint
numeric, (or numeric(p), numeric(p,s))
decimal, (or decimal(p), decimal(p,s))
float, float(p), real , double precision
##– Date, time:
Date, time, timestamp
time with timezone, timestamp with timezone
## – Bit:
bit(n)
bit varying(n)
## – Further domanis (introduced in SQL:1999)
boolean
BLOB, CLOB, NCLOB (binary/character large object)
