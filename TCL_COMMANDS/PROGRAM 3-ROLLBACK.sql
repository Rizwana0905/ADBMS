create table students(Regno varchar(10),name varchar(20),class varchar(20),marks 
number(20));

insert into students values('24UCSC001','priya','I BCA',590);
insert into students values('24UCSC002','swetha','I BCA',669);

update students SET name = 'jaya' WHERE Regno = '24UCSC001';

ROLLBACK to A;
