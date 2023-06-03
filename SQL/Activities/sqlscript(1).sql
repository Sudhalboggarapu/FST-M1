REM   Script: Activites
REM   Assignment

CREATE TABLE salesman ( 
    salesman_id int, 
    salesman_name varchar2(32), 
    salesman_city varchar2(32), 
    commission int 
);

INSERT INTO salesman VALUES(1, 'RaviKiran', 'Paris', 13);

SELECT 1 FROM DUAL;

SELECT * FROM salesman;

INSERT ALL 
    INTO salesman VALUES(2, 'Madanpalle', 'London', 11) 
    INTO salesman VALUES(6, 'Macow', 'Paris', 14) 
    INTO salesman VALUES(7, 'Murali', 'Rome', 13) 
    INTO salesman VALUES(3, 'Hen', 'San Jose', 12);

INSERT ALL 
    INTO salesman VALUES(2, 'Madanpalle', 'London', 11) 
    INTO salesman VALUES(6, 'Macow', 'Paris', 14) 
    INTO salesman VALUES(7, 'Murali', 'Rome', 13) 
    INTO salesman VALUES(3, 'Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL;

Desc salesman


SELECT salesman_id, salesman_city FROM salesman;

SELECT * FROM salesman WHERE salesman_city='Paris';

SELECT salesman_id, commission FROM salesman WHERE salesman_name='Paul Adam';

SELECT salesman_id, commission FROM salesman WHERE salesman_name like'H%';

SELECT salesman_id,  salesman_name,commission FROM salesman WHERE salesman_name like'H%';

ALTER TABLE table_name 
ALTER COLUMN salesman_id varchar2(10);

- Alter table 


ALTER TABLE table_name 
ALTER salesman_id varchar2(10);

- Alter table 


ALTER TABLE table_name 
ALTER salesman_id varchar2(10);

ALTER TABLE salesman 
ALTER salesman_id varchar2(10);

ALTER TABLE salesman 
Modify salesman_id varchar2(10);

ALTER TABLE salesman 
Add DOB date;

desc salesman


select from salesman;

CREATE TABLE salesman ( 
    salesman_id int, 
    salesman_name varchar2(32), 
    salesman_city varchar2(32), 
    commission int 
);

Solution queries: 


INSERT INTO salesman VALUES(1, 'RaviKiran', 'Paris', 13);

INSERT ALL 
    INTO salesman VALUES(2, 'Madanpalle', 'London', 11) 
    INTO salesman VALUES(6, 'Macow', 'Paris', 14) 
    INTO salesman VALUES(7, 'Murali', 'Rome', 13) 
    INTO salesman VALUES(3, 'Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL;

Desc salesman 


SELECT * FROM salesman;

SELECT salesman_id, salesman_city FROM salesman;

SELECT * FROM salesman WHERE salesman_city='Paris';

SELECT salesman_id,  salesman_name,commission FROM salesman WHERE salesman_name like'H%';

ALTER TABLE salesman 
Modify salesman_id varchar2(10);

ALTER TABLE salesman 
Add DOB date;

desc salesman 


select * from salesman;

SELECT * FROM salesman;

update salesman 
set DOB=11/11/1987 where salesman_id-12;

update salesman 
set DOB=11/11/1987 where salesman_id=12;

ALTER TABLE salesman 
Modify DOB varchar2(10);

update salesman 
set DOB='11/11/1987' where salesman_id=12;

update salesman 
set DOB='11/11/1987' where salesman_id=2;

UPDATE salesman SET DOB='11/11/1987';

SELECT * FROM salesman;

update salesman 
set DOB='14/11/1982' where salesman_id=2;

UPDATE salesman SET salesman_name='Pierre' WHERE salesman_name='Hen';

UPDATE salesman SET salesman_name='Pierre' WHERE salesman_name='Hen';

