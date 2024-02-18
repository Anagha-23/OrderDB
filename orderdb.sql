Create database orderdb;
Use orderdb;
Create table salesman(sid int,
sname varchar(30),
scity varchar(30),
com int,
primary key(sid));
Create table customer(cid int,
cname varchar(30),
ccity varchar(30),
grade int,
sid int,
primary key(cid),
foreign key (sid) References salesman(sid) on delete set NULL);
Create table orders(ordno int,
puramt int,
orddate date,
cid int,
sid int,
primary key(ordno),
foreign key (cid) References customer(cid) on delete cascade,
foreign key (sid) References salesman(sid) on delete set NULL);
