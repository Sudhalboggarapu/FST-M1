REM   Script: Activites6
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

create table orders( 
    order_no int primary key, purchase_amount float, order_date date, 
    customer_id int, salesman_id int);

desc orders


INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

select distinct salesman_id from orders;

select order_no, order_date from orders order by order_date;

select order_no, purchase_amount from orders order by purchase_amount DESC;

select * from orders where purchase_amount < 500;

select * from orders where purchase_amount between 1000 and 2000;

commit;

select * from orders;

delete from orders 
where purchase_amount between 1000 and 2000;

commit;

RollBack;

select * from orders;

delete from orders 
where purchase_amount between 1000 and 2000;

RollBack;

select * from orders;

