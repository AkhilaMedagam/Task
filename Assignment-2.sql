-- create employee table
CREATE TABLE employee(EmpID int,EmpName varchar(20),DeptID int,Salary int,HireDate varchar(20));
INSERT INTO employee VALUES(101,'John',1,50000,'2018-02-12'),(102,'Alice',2,60000,'2019-07-10'),(103,'Bob',1,55000,'2020-05-05'),
(104,'Carol',3,45000,'2017-09-20');
SELECT * FROM employee;

-- Display employee whose name start with 'A'
SELECT * FROM employee WHERE EmpName LIKE 'A%' OR EmpName LIKE 'a%';

-- Find employees whose salary is between 45000 and 60000
SELECT * FROM employee WHERE Salary BETWEEN 45000 AND 60000;

-- create dept table
CREATE TABLE dept(DeptID int,DeptName varchar(20));
INSERT INTO dept VALUES(1,'HR'),(2,'IT'),(3,'Sales');
SELECT * FROM dept;

-- show the department name of each employee
SELECT e.EmpName,d.DeptName FROM employee AS e JOIN dept AS d ON e.DeptID=d.DeptID;

-- find the number of employees in each department
SELECT d.DeptName, COUNT(e.EmpID) AS NumberOfEmployees FROM dept d LEFT JOIN employee e ON d.DeptID=e.DeptID GROUP BY d.DeptName;

-- display all employees including those without a department
SELECT e.EmpID,e.EmpName,e.Salary,e.HireDate,d.DeptName FROM employee e LEFT JOIN dept d ON e.DeptID=d.DeptID;