SELECT DISTINCT DEPTNO
    FROM EMP;

SELECT DISTINCT JOB, DEPTNO
    FROM EMP;

SELECT ENAME, SAL, SAL*12+COMM, COMM 
    FROM EMP;

String sql = "SELECT ENAME, SAL, SAL*12+COMM AS "ANNSAL", COMM FROM EMP";

SELECT * FROM EMP ORDER BY SAL;

SELECT * FROM EMP ORDER BY SAL DESC;

SELECT * FROM EMP ORDER BY DEPTNO ASC, SAL DESC;

SELECT * FROM EMP WHERE DEPTNO = 30;

SELECT * FROM EMP WHERE DEPTNO = 30 AND JOB = 'SALESMAN';

SELECT * FROM EMP WHERE DEPTNO = 30 OR JOB = 'CLERK';

SELECT * FROM EMP WHERE SAL * 12 = 36000;

SELECT * FROM EMP WHERE SAL >= 3000;

SELECT * FROM EMP WHERE ENAME >= 'F';

SELECT * FROM EMP WHERE SAL != 3000;

SELECT * FROM EMP WHERE SAL ^=3000;

SELECT * FROM EMP WHERE NOT SAL = 3000;

SELECT * FROM EMP WHERE JOB = 'MANAGER'
                     OR JOB = 'SALESMAN'
                     OR JOB = 'CLERK';

SELECT FROM EMP WHERE JOB IN ('MANAGER', 'SALESMAN', 'CLERK');

SELECT * FROM EMP WHERE JOB != 'MANAGER'
                    AND JOB <> 'SALESMAN'
                    AND JOB ^= 'CLERK';

SELECT * FROM EMP WHERE JOB NOT IN ('MANAGER', 'SALESMAN', 'CLERK');

select * from emp where sal >=2000 and sal <=3000;

select * from emp where sal between 2000 and 3000;

select * from emp where sal not between 2000 and 3000;

select * from emp where ENAME like 'S%';

SELECT * FROM EMP WHERE ENAME LIKE '_L%';

SELECT * FROM EMP WHERE ENAME LIKE '%AM%';

SELECT * FROM SOME_TABLE WHERE SOME_COLUMN LIKE 'A\_A%' ESCAPE '\';

select ename, sal, sal*12+comm as annsal, comm from emp;

select * from emp where comm = null;

select * from emp where comm is null;

select * from emp where MGR is not null;

select * from emp where sal > null and comm is null;

select * from EMP WHERE SAL > NULL AND COMM IS NULL;

select EMPNO, ENAME, SAL, DEPTNO FROM EMP WHERE DEPTNO = 10
UNION SELECT EMPNO, ENAME, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 20;

select EMPNO, ENAME, SAL, DEPTNO FROM EMP WHERE DEPTNO = 10
UNION SELECT EMPNO, ENAME, SAL
FROM EMP
WHERE DEPTNO = 20;

select EMPNO, ENAME, SAL, DEPTNO FROM EMP WHERE DEPTNO = 10
UNION SELECT EMPNO, ENAME, SAL
UNION 
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP
WHERE DEPTNO = 10;

SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP
WHERE DEPTNO = 10;

/* 오라클로 배우는 데이터베이스 입문 저서 참고 */