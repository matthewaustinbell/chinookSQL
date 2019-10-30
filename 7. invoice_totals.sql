--invoice_totals.sql

--Provide a query that shows the Invoice Total, Customer name, 
--Country and Sale Agent name for all invoices and customers.

Select c.FirstName +' '+ c.LastName as CustomerName,
	c.Country,
	e.FirstName +' '+ e.LastName as EmployeeName,
	i.Total
From Invoice i
	inner join Customer c
	on i.CustomerId = c.CustomerId
	inner join Employee e
	on e.EmployeeId = c.SupportRepId