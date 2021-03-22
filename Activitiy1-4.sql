//Activity01
SELECT last_name "Name", salary/7 "Weekly Salary" FROM emps;

//Activity02
a)
SELECT e.fname, e.lname, s.fname = 'Franklin' , s.lname = 'Wong' from employee e, employee s where e.superssn = s.ssn;
b)
SELECT e.fname, e.lname from employee e, dependent d where d.dependent_name = e.fname and d.sex = 'F';
c)
SELECT e.lname, de.mgrstartdate, d.dependent_name from employee e, department de, dependent d where e.ssn = de.mgrssn;
d)
SELECT e.fname, e.lname, d.dname, p.pname, w.hours from employee e, department d, project p, works_on w;

//Activity 3
SELECT Last_Name, Job_Id, Hire_Date from emps where Hire_Date BETWEEN 1998-02-20 AND 1998-05-01 ORDER BY Hire_Date;

//Activity 4
SELECT last_name, department_id from emps where department_id BETWEEN 20 and 50 ORDER BY last_name;