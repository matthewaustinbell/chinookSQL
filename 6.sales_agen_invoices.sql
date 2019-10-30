--sales_agent_invoices.sql

--Provide a query that shows the invoices associated with each sales agent. 
--The resultant table should include the Sales Agent's full name.

Select e.FirstName, e.LastName, InvoiceId
from Invoice i
	inner join Customer c
	on i.CustomerId = c.CustomerId
	inner join Employee e
	on e.EmployeeId = c.SupportRepId