CREATE TABLE Customer(
    customerID VARCHAR(6) PRIMARY KEY,
	customer_name VARCHAR(20) NOT NULL,
	customer_tel NUMBER
);

CREATE TABLE Product (
	ProductID VARCHAR(6) PRIMARY KEY,
	Product_name VARCHAR(20) NOT NULL,
    Category VARCHAR2(20),
    price NUMBER CHECK (price > 0)
);

CREATE TABLE Orders (
	customerID VARCHAR(6) FOREIGN KEY REFERENCES Customer(customerID),
    ProductID VARCHAR(6) FOREIGN KEY REFERENCES Product(ProductID),
    OrderDate DATE,
    quantity NUMBER,
    total_amount NUMBER
);

INSERT INTO Customer
VALUES ("C01", "ALI", 71321009), ("C02", "ASMA", 77345823);

INSERT INTO Product
VALUES ("P01", "Samsung Galaxy S20", "Smartphone", 3299), ("P02", "ASUS Notebook", "PC", 4599);

INSERT INTO Orders
VALUES ("C01", "P01", NULL, 2, 9198), ("C02", "P02", "2020-05-28",1, 3299);