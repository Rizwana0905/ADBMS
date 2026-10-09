create table students(Regno varchar(10),name varchar(20),class varchar(20),marks 
number(20));

insert into students values('24UCSC003','subasree','I BCA',623);

SAVEPOINT A;

update students SET marks = 650 WHERE class = 'I BCA';

ROLLBACK to A;
