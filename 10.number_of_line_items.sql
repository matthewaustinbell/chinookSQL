
--10
--looking at the invoiceLine table, 
--provide a query that COUNTs
--the number of line items for invoice ID 37
-- probably use count inovoiceLine and any column


SELECT COUNT (UnitPrice)
FROM InvoiceLine
WHERE InvoiceId = 37;



