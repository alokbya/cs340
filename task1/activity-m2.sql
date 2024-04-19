-- Drop tables if they exist
DROP TABLE IF EXISTS Invoices;
DROP TABLE IF EXISTS TermsCode;
DROP TABLE IF EXISTS Customers;

-- Create Customers table
CREATE TABLE Customers (
    CustomerID int NOT NULL AUTO_INCREMENT,
    CustomerName varchar(50),
    AddressLine1 varchar(50),
    AddressLine2 varchar(50),
    City varchar(50),
    State varchar(50),
    PostalCode varchar(50),
    YTDPurchases decimal(19, 2),
    PRIMARY KEY (CustomerID)
);

-- Create TermsCode table
CREATE TABLE TermsCode (
    TermsCodeID varchar(50) NOT NULL,
    Description varchar(50),
    PRIMARY KEY (TermsCodeID)
);

-- Create Invoices table
CREATE TABLE Invoices (
    InvoiceID int NOT NULL AUTO_INCREMENT,
    CustomerID int,
    InvoiceDate datetime,
    TermsCodeID varchar(50),
    TotalDue decimal(19, 2),
    PRIMARY KEY (InvoiceID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (TermsCodeID) REFERENCES TermsCode(TermsCodeID)
);

-- Insert data into Customers table
INSERT INTO Customers (CustomerName, AddressLine1, AddressLine2, City, State, PostalCode, YTDPurchases)
VALUES 
    ('Bike World', '60025 Bollinger Canyon Road', '', 'San Ramon', 'California', '94583', 0.00),
    ('Metro Sports', '482505 Warm Springs Blvd.', '', 'Fremont', 'California', '94536', 0.00),
    ('Alaaddin', '200 E Colfax Ave', '', 'Denver', 'Colorado', '80203', 0.00);

-- Insert data into TermsCode table
INSERT INTO TermsCode (TermsCodeID, Description)
VALUES 
    ('NET30', 'Payment due in 30 days.'),
    ('NET15', 'Payment due in 15 days.'),
    ('210NET30', '2% discount in 10 days Net 30');

-- Insert data into Invoices table
INSERT INTO Invoices (CustomerID, InvoiceDate, TermsCodeID, TotalDue)
VALUES
    (2, '2014-02-07', 'NET30', 2388.98),
    (1, '2014-02-02', '210NET30', 2443.35),
    (1, '2014-02-09', 'NET30', 8752.32);
    
-- Select all records from Customers
SELECT * FROM Customers;

-- Select specific fields from Customers where PostalCode is '94536'
SELECT CustomerID, CustomerName FROM Customers WHERE PostalCode = '94536';

-- Show all tables in the database
SHOW TABLES;

-- Describe the structure of Customers table
DESCRIBE Customers;
