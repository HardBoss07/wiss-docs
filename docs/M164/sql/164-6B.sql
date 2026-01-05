use edugames;

select p.project_id, p.name as project_name, e.firstname, e.name as lastname
from project p
inner join employee e
on p.project_head = e.employee_id;

select e.employee_id, e.firstname, e.name as lastname, d.name as department
from employee e
inner join department d
on e.department = d.department_id;

select a.assignment_id, a.name as assignment_name, p.name as project_name, e.firstname, e.name as lastname
from assignment a
inner join project p
on a.project_id = p.project_id
inner join employee e
on e.employee_id in (select employee_id from employee_assignment ea where ea.assignment_id = a.assignment_id);

delete a
from assignment a
inner join project p
on a.project_id = p.project_id
where p.project_head = 1;

update employee e
inner join department d
on e.department = d.department_id
SET e.employment = 100
where d.name = 'Development';

select e.firstname, e.name as lastname, s.amount as salary_amount
from employee e
inner join employee_salary es
on e.employee_id = es.employee_id
inner join salary s
on es.salary_id = s.salary_id;

select c.username, g.gameName, gc.salesprice
from customeraccount c
inner join game_customeraccount gc
on c.customer_id = gc.customer_id
inner join game g
on gc.game_id = g.game_id;
