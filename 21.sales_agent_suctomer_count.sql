Select e.FirstName + '' + e.LastName,count (*)
From  Customer c
	join Employee e
		on c.SupportRepId = e.EmployeeId
group by e.Employeeid, e.FirstName, e.LastName