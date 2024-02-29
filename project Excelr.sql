## Average Hourly rate of Male Research Scientist

SELECT *,((DailyRate)/8) FROM HR_1 WHERE Gender = 'Male' and JobRole='Research Scientist';
    

    
##  Average Attrition rate for all Departments    
    
Select Department ,count(*) from hr_1 group by Department;
        
select avg(attrition),department, count(*) from hr_1 group by department;
     
     
##  Attrition rate Vs Monthly income status
     
 select a.department,
 format(avg(attrition_yes)*100,2) as attrition_rate,
 format(avg(monthlyincome),2) as AVG_monthlyincome 
 from
 (select department,attrition,employeenumber,
 case 
 when attrition='yes'
 then 1
 else 0 
 end as attrition_yes from hr_1)as a
 join
 hr_2 as b on a.employeenumber=b.employeeid
 group by a.department;
 
 
  ##   Average working years for each Department
 
 select department,format(avg(totalworkingyears),0) as Avg_workingyears
 from 
 hr_1 join hr_2  on hr_1.employeenumber=hr_2.employeeid 
 group by department;
 
  
 ##  Job Role Vs Work life balance
 
 select jobrole,avg(worklifebalance) as Avg_worklifebalance
 from
 hr_1 join hr_2 on hr_1.EmployeeNumber=hr_2.Employeeid
 group by jobrole;
 
 
 ##   Attrition rate Vs Year since last promotion relation

select format(avg(a.Attrition_yes)*100,2) as Attrition_rate
from
(select attrition,Department,
       case
       when attrition='yes' 
       then 1 
       else 0
       end as attrition_yes
from hr_1) as a;

        