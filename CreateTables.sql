use Petunias;
CREATE TABLE Invoice (
  InvoiceNum Integer,
  CustomerID Integer,
  EmployeeID Integer,
  InvoiceDate Date,
  DetailTotal Decimal(7,2),
  TaxTotal Decimal(7,2),
  TotalAmtDue integer,
  PRIMARY KEY (InvoiceNum)
);

CREATE TABLE InvoiceDtl (
  InvoiceNum Integer,
  LineNum Integer,
  ItemNum Integer,
  Quantity int,
  LineTotal Decimal(7,2),
primary key (InvoiceNum, LineNum)
);

CREATE TABLE Customer (
  CustomerID Integer,
  CustomerName VARCHAR(50),
  CustomerAddress VARCHAR(50),
  CustomerCity VARCHAR(20),
  CustomerState VARCHAR(2),
  CustomerZip VARCHAR(10),
  EmailID VARCHAR(20)
primary key (CustomerID)
);

CREATE TABLE ItemMaster (
  ItemNum Integer,
  ItemDesc VARCHAR(50),
  UnitPrice DECIMAL(5,2),
  ItemCatg VARCHAR(3)
primary key (ItemNum)
);

CREATE TABLE CatgMaster (
  Category VARCHAR(3),
  CatgDesc VARCHAR(50)
primary key (CatgDesc)
);

CREATE TABLE  Employee (
  EmployeeID Integer,
  EmployeeName VARCHAR(50),
  EmployeeAddress VARCHAR(50),
  EmployeeCity VARCHAR(20),
  EmployeeState VARCHAR(2),
  EmployeeZip VARCHAR(10),
  EmailID VARCHAR(20)
primary key (EmployeeID)
);