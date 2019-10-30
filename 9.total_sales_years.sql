SELECT SELECT year(InvoiceDate), as YearofInvoices,
	sum(Total) as TotalSales
FROM Invoice
WHERE year(InvoiceDate) in (2009, 2011)
group by year(InvoiceDate)