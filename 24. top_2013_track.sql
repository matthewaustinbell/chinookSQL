--provide a query that shows the most purchased Media Tpye

SELECT top 1 with ties t.Name, sum(il.Quantity)
	from InvoiceLine il
		join Track t
			on il.TrackId = t.TrackId
		join Invoice i
			on i.InvoiceId = il.InvoiceId
where year(i.InvoiceDate) = 2013
group by t.TrackId, t.Name
order by 2 desc