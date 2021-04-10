1.
SELECT Last_Name, Hire_Date from emps WHERE Hire_Date LIKE '1994%'
2.
SELECT Last_Name, Salary, Commission_pct from emps where Commission_pct IS NOT null ORDER BY Salary DESC
3.
SELECT Last_Name FROM emps where Last_Name LIKE 'a%e'
4.
SELECT e.Last_Name, d.Department_Id, d.Department_name FROM emps e JOIN depts d
5.
SELECT e.last_name, l.location_id, d.department_name, l.city from emps e JOIN depts d JOIN locs l where e.Commission_pct is NOT null
6.
SELECT e.last_name, d.Department_id, d.department_name, e.Job_Id from emps e JOIN depts d ON (e.Department_Id = d.Department_id) JOIN locs l ON (d.Location_id = l.Location_id) WHERE l.City = 'Torronto'
8. 
SELECT w.last_name "Employee", w.employee_id "EMP#", m.last_name "Manager", m.employee_id "Mgr#" FROM emps w join emps m ON (w.manager_id = m.employee_id)
9.
SELECT round(MAX(salary),0) "Maximum", round(MIN(Salary),0) "Minimum", round(SUM(Salary),0) "Sum", round(AVG(Salary),0) "Average" FROM emps
10.
SELECT job_id, ROUND(MAX(salary),0) "Maximum", ROUND(MIN(salary),0) "Minimum", ROUND(SUM(salary),0) "Sum", ROUND(AVG(salary),0) "Average" FROM emps GROUP BY job_id
11.
SELECT Job_Id, COUNT(*) FROM emps GROUP by Job_Id
12.
SELECT Manager_id, MIN(Salary) FROM emps where Manager_id is NOT null GROUP BY Manager_id HAVING Min(Salary) <= 6000 ORDER BY min(Salary) DESC

Homework
select d.department_name"NAME",d.location_id "LOCATIONS", count(*)"NUMBER OF PEOPLE" ,round(avg(e.salary),2) "Salary" from depts d JOIN emps e where e.department_id=d.department_id group by d.department_name,d.location_id