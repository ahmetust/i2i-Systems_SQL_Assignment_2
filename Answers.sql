//Answer 1
SELECT 
    employee_id, first_name, last_name, 
    FLOOR(MONTHS_BETWEEN(TO_DATE('22-08-2015'), hire_date)) AS "Number of Months"
FROM 
    HR.employees;

//Answer 2
SELECT DISTINCT job_id as Job,
DECODE(job_id,  'AD_PRES','A',
                     'ST_MAN','B',
                     'IT_PROG','C',
                    'SA_REP','D',
                    'ST_CLERK','E',
                    '0') Grade
FROM HR.employees
ORDER BY Grade ASC;


//Answer 3 
SELECT DISTINCT
  job_id AS Job,
  CASE job_id
    WHEN 'AD_PRES' THEN 'A'
    WHEN 'ST_MAN' THEN 'B'
    WHEN 'IT_PROG' THEN 'C'
    WHEN 'SA_REP' THEN 'D'
    WHEN 'ST_CLERK' THEN 'E'
    ELSE '0'
  END AS Grade
FROM HR.employees
ORDER BY Grade ASC;


//Answer 4
select e.employee_id, e.last_name
from   HR.employees e
where  e.last_name LIKE '%i%' and e.department_id is not null;

//Answer 5 
CREATE TABLE MY_EMP_TABLE( 
    ID Number(1), 
    LAST_NAME VARCHAR2(20), 
    FIRST_NAME VARCHAR2(20), 
    SALARY number(10) 
); 

INSERT ALL 
   INTO MY_EMP_TABLE(ID,LAST_NAME,FIRST_NAME,) VALUES (1,'Black', 'John', 1100) 
   INTO MY_EMP_TABLE(ID,LAST_NAME,FIRST_NAME,) VALUES (2,'White', 'Kent', 1300) 
   INTO MY_EMP_TABLE(ID,LAST_NAME,FIRST_NAME,) VALUES (3,'Orange', 'David', 1700) 
   INTO MY_EMP_TABLE(ID,LAST_NAME,FIRST_NAME,) VALUES (4,'Pink', 'Alissa', 1900) 
SELECT * FROM MY_EMP_TABLE ; 

UPDATE MY_EMP_TABLE
SET salary = salary*1.1; 
SELECT * FROM MY_EMP_TABLE ; 

DELETE FROM MY_EMP_TABLE 
WHERE FIRST_NAME = 'David'; 
SELECT * FROM MY_EMP_TABLE ; 

TRUNCATE TABLE MY_EMP_TABLE ; 
SELECT * FROM MY_EMP_TABLE ; 
