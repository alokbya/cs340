SELECT Products.ProductNumber,
	Products.ProductName,
	InvoiceDetails.LineTotal,
	InvoiceDetails.OrderQty,
	InvoiceDetails.UnitPrice
FROM Products
INNER JOIN InvoiceDetails ON Products.ProductNumber = InvoiceDetails.ProductNumber
WHERE InvoiceDetails.InvoiceID = 3;
