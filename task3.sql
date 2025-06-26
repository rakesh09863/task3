----select
select * from emp;
select * from  dept;
select emp.*,dept.* from emp,dept;
select e.empno,e.ename,e.job,e.sal,e.deptno,d.dname,d.loc from emp e,dept d;

----where 
select ename,job,sal,comm from emp where lower(ename) ='smith';
select ename,job,sal,comm from emp where deptno =10;
select empno,ename,job,mgr,hiredate,sal,comm,deptno from emp where deptno in(10,20);
select empno,ename,job,mgr,hiredate,sal,comm,deptno from emp where lower(ename) in ('smith','ward');
select empno,ename,job,mgr,hiredate,sal,comm,deptno from emp where deptno in(10,20);


-----and
select empno,ename,job,sal,deptno from emp where sal =800 and lower(job) ='clerk';
select empno,ename,job,dname,loc from emp,dept where lower(ename) ='jones' and lower(job) ='manager';
select * from emp where job='SALESMAN' and deptno=30 and comm>sal/2;

-----or
select empno,ename,job,mgr,sal,comm from emp where lower(ename) ='jones' or lower(ename)='blake';
select dname,loc,deptno from dept where lower(dname)='research' or lower(dname) ='sales';
select * from emp where (job='CLERK' OR job='ANALYST') and sal>1000;

-----between and
select * from  emp where hiredate between '01-JAN-81' and '31-DEC-81';
select empno, ename, job, sal, sal*12 annuval, deptno from emp where sal*12 not between 18000 and 36000;
select * from emp where sal between 1000 and 1500;

---like
select * from emp where ename like 'J%';
select * from emp where ename like '%S';
select * from emp where ename like '%A%';
select * from emp where ename like '%A%' AND ename  '%E%';
select * from emp where ename like '%A%E%';
select * from emp where ename like '_A%';
select * from emp where hiredate like '%81';
select * from emp where ename like '%A%A%';

--------order by
select empno,ename,job,sal*12 as annsal,deptno from emp order by sal*12;
select empno,ename,job,deptno,sal from emp order by deptno;
select empno,ename,job,deptno,sal from emp order by ename;
select empno,ename,job,hiredate,deptno,sal from emp order by hiredate;
select empno,ename,job,deptno,sal from emp order by deptno,sal;
select empno,ename,job,deptno,sal from emp order by 4,5;
select empno,ename,job,deptno,sal from emp order by 4,5 desc;
select empno,ename,job,deptno,sal from emp order by 4 desc,5 desc; 
select empno,ename,job,deptno,sal from emp order by deptno desc,sal desc;

------rownum (limit not work in sql*plus)
select * from emp where rownum < 4 order by sal desc ;
select empno,ename,job,sal from emp where rownum<3 order by deptno;
select empno,ename,job,sal from emp where rownum<5;
