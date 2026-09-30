USE d16;

select * from deptt;
select * from empp;

select  emp.ename,deptt.dname from empp as emp join deptt
on emp.deptno=deptt.deptno where emp.deptno=30 and emp.job="SALESMAN";

select  emp.ename,emp.job,deptt.dname,deptt.loc from empp as emp join deptt 
on emp.deptno=deptt.deptno where  deptt.dname="SALES";

select emp.ename,deptt.dname,emp.sal from empp as emp
join deptt on emp.deptno=deptt.deptno
where emp.sal > (select sal from empp where ename='MILLER')
and emp.sal < (select sal from empp where ename='KING');

select count(*) from empp as emp
join deptt on emp.deptno=deptt.deptno where deptt.loc='new york';

select emp.ename,deptt.dname from empp as emp
join deptt on emp.deptno=deptt.deptno;

select emp.ename,emp.deptno,emp.sal from empp as emp
where emp.sal = (select max(e.sal) from empp as e where e.deptno=emp.deptno);

select emp.ename,deptt.dname,emp.sal from empp as emp join deptt
on emp.deptno=deptt.deptno order by emp.sal desc;

select emp.ename,emp.job,deptt.dname from empp as emp join deptt
on emp.deptno=deptt.deptno
where exists (select 1 from empp as e where e.job=emp.job and e.deptno<>emp.deptno);

select * from studdents;

alter table empp add joining_date date;

update empp set joining_date='2020-01-15' where empno=1;

desc empp;

select emp.ename,deptt.dname,emp.joining_date from empp as emp join deptt
on emp.deptno=deptt.deptno
where emp.joining_date = (select min(e.joining_date) from empp as e where e.deptno=emp.deptno);

select * from empp as emp
join students as stu on emp.empno=stu.student_id;