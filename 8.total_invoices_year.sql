--invoice_totals.sql

--Provide a query that shows the Invoice Total, Customer name, 
--Country and Sale Agent name for all invoices and customers.


SELECT year(InvoiceDate), count(*)
FROM Invoice
WHERE year(InvoiceDate) in (2009, 2011)
group by year(InvoiceDate)