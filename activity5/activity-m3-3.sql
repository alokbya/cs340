SELECT Customers.CustomerName, Invoices.InvoiceID, SUM(InvoiceDetails.LineTotal) AS LineSum
FROM Customers
INNER JOIN Invoices ON Customers.CustomerID = Invoices.CustomerID
INNER JOIN InvoiceDetails ON Invoices.InvoiceID = InvoiceDetails.InvoiceID
GROUP BY InvoiceID
ORDER BY LineSum DESC;
