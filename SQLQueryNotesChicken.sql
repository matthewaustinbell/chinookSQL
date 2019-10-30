-- Union combines two sets together
-- alias works from the top down
select 1, 'Customer' as Type, FirstName + ' ' + LastName as FullName  
from customer 
union all
select getdate() ,'Employee', FirstName + ' ' + LastName as FullName  
from Employee


--except doesnt bring the ones that are in common only brings up the ones that are different at the top
select firstname
from customer 
except 
select firstname 
from Employee



select firstname, LastName 
from customer c 