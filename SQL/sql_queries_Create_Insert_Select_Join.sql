CREATE TABLE employees (
   id serial not null,
   employee_name varchar(50) not null,
  role_employee varchar(50),
  project varchar(50),
  workload int ,
   PRIMARY KEY (id)
   );
   INSERT INTO employees (id, employee_name,role_employee,project,workload)  
VALUES (default, 'viktor','tester','Billing',40),(default, 'Leo', 'developer','Credits',50),
(default, 'sandra','manager','Insuranse',20),(default, 'Jask','tester','Credits',35)

SELECT * from employees;

CREATE TABLE projects (
   id serial not null,
   project_name varchar(50) not null,
  product_owner varchar(50),
  duration INT,
   PRIMARY KEY (id)
   );
   INSERT INTO projects  (id, project_name,product_owner,duration)  
VALUES (default, 'Billing','Autoline',5),(default, 'Credits','Bank',2),(default, 'Insurance','Life',10),
(default, 'Deposit','Bankotp',14);

select * from projects;

//Сотрудник с ролью тестировщика,работающий в проекте с длительностью 5 месяцев
SELECT project_name from projects
select emp.employee_name,project_name from employees AS emp
inner JOIN projects AS pro on emp.project=pro.project_name where pro.duration =5
   
Как получить список всех сотрудников + название проекта?
select employee_name, project from employees;

Как узнать число сотрудников в каждом проекте?
select  projects count quantity from employees qroup project;