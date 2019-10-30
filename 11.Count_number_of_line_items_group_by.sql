--11
--Looking  at the invoiceLine table, 
---provide a query that COUNTs the number of line
--items for each Invoice HINT: Group BY

Select Count(InvoiceId) as LineItems
From InvoiceLine
group by InvoiceId