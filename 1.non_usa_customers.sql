select FirstName + ' ' + LastName as FullName, CustomerID
from Customer
where Country != 'USA'