use edugames;

start transaction;

insert into employee (firstname, last_name, address, address2, city, zip, phone, dob, salary, employment, civilstatus, childallowance, numberchildren)
values
('Anna','Muster','Beispielstrasse 1','','Zürich','8000','+41790001111','1995-01-01',5000,100,'single',0,0),
('Markus','Meier','Musterweg 5','','Bern','3000','+41790002222','1988-03-12',6000,80,'married',1,2),
('Stefan','Huber','Hauptstrasse 9','','Luzern','6000','+41790003333','1990-07-21',5500,90,'single',0,0),
('Franziska','Keller','Seestrasse 12','','Genf','1200','+41790004444','1992-11-11',5200,100,'single',0,0),
('Max','Müller','Bachweg 3','','Basel','4000','+41790005555','1985-05-05',5800,100,'married',2,3);

select * from employee where department is null;

update employee
set department = (select department_id from department where name='Accounting')
where department is null and firstname like 'A%';

update employee
set department = (select department_id from department where name='System Administration')
where department is null and last_name like 'M%' and firstname not like 'M%';

update employee
set department = (select department_id from department where name='System Security')
where department is null and firstname like 'S%';

update employee
set department = (select department_id from department where name='Marketing')
where department is null and firstname like 'M%' and last_name like 'M%';

update employee
set department = (select department_id from department where name='Research')
where department is null and firstname like 'F%';

update employee
set department = (select department_id from department where name='Development')
where department is null;

select employee_id, firstname, last_name, department from employee;

commit;
