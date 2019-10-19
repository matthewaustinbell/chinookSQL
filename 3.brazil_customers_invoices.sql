select 
	c.FirstName,
	c.LastName,
	i.InvoiceDate, 
	i.BillingCountry,
	i.InvoiceId
from Customer c
	join Invoice i on c.CustomerId = i.CustomerId
	where Country = 'Brazil'
	


