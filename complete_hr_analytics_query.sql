-- project table
with project_info as(
select
project_id,
project_name,
project_budget,
'upcoming' as status
from `upcoming projects`
union all
select
project_id,
project_name,
project_budget,
'completed' as status
from completed_projects)


select 
employees.ï»¿employee_id,
employees.first_name,
employees.last_name,
employees.job_title,
employees.salary,
departments.Department_Name,
departments.Department_Goals,
departments.Department_Budget,
project_assignments.project_id,
project_info.project_name,
project_info.project_budget,
project_info.status
from employees
join departments on employees.department_id=departments.ï»¿Department_ID
join project_assignments on project_assignments.employee_id=employees.ï»¿employee_id
join project_info on project_info.project_id=project_assignments.project_id;