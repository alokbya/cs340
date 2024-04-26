SELECT InvoiceDetails.InvoiceID, Products.ProductName, InvoiceDetails.UnitPrice
FROM InvoiceDetails 
	INNER JOIN Products 
	ON InvoiceDetails.ProductNumber = Products.ProductNumber 
WHERE InvoiceDetails.InvoiceID = 1 
ORDER BY InvoiceDetails.InvoiceID, Products.ProductName;
