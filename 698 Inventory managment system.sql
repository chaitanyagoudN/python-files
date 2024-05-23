-- Create the database and switch to it
CREATE DATABASE gpt_inv;
USE gpt_inv;

-- Vendor table
CREATE TABLE Vendor (
    VendorID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    VendorName VARCHAR(100),
    ContactPerson VARCHAR(100),
    Email VARCHAR(100),
    UNIQUE INDEX uq_vendor_email (Email)
);

-- Customer table
CREATE TABLE Customer (
    CustomerID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(100),
    Address VARCHAR(255),
    PhoneNumber VARCHAR(15),
    UNIQUE INDEX uq_customer_phone (PhoneNumber)
);

-- Product table
CREATE TABLE Product (
    ProductID INT NOT NULL PRIMARY KEY,
    Name VARCHAR(100),
    Description TEXT,
    Quantity INT DEFAULT 0,
    Price DECIMAL(10, 2),
    Category VARCHAR(50),
    VendorID INT,
    FOREIGN KEY (VendorID) REFERENCES Vendor(VendorID),
    UNIQUE INDEX uq_product_name (Name)
);

-- Order table
CREATE TABLE `Order` (
    OrderID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    DeliveryDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Employee table
CREATE TABLE Employee (
    EmployeeID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(100),
    Role VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100),
    PasswordHash VARCHAR(255),
    UNIQUE INDEX uq_employee_phone (PhoneNumber),
    UNIQUE INDEX uq_employee_email (Email)
);

-- Floor_Manager table
CREATE TABLE Floor_Manager (
    FloorManagerID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(100),
    Role VARCHAR(100),
    EmployeeID INT,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

-- Inventory table
CREATE TABLE Inventory (
    InventoryID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Location VARCHAR(255),
    Capacity INT,
    ProductID INT,
    FloorManagerID INT,
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    FOREIGN KEY (FloorManagerID) REFERENCES Floor_Manager(FloorManagerID),
    UNIQUE INDEX uq_inventory_location (Location)
);

-- Floor_Manager_Order table for orders placed by floor managers to vendors
CREATE TABLE Floor_Manager_Order (
    FloorManagerOrderID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FloorManagerID INT,
    VendorID INT,
    OrderDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    DeliveryDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (FloorManagerID) REFERENCES Floor_Manager(FloorManagerID),
    FOREIGN KEY (VendorID) REFERENCES Vendor(VendorID)
);

-- Order_Product table for many-to-many relationship between Order and Product
CREATE TABLE Order_Product (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    PRIMARY KEY (OrderID, ProductID),
    #FOREIGN KEY (OrderID) REFERENCES `Order`(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

-- Trigger to update inventory when an order is placed
DELIMITER $$
CREATE TRIGGER update_inventory_after_order_insert
AFTER INSERT ON `Order`
FOR EACH ROW
BEGIN
    DECLARE product_id INT;
    DECLARE quantity_ordered INT;
    DECLARE current_quantity INT;
    
    -- Get the product ID and quantity ordered for the new order
    SELECT ProductID, Quantity INTO product_id, quantity_ordered
    FROM Order_Product
    WHERE OrderID = NEW.OrderID;
    
    -- Update the inventory quantity
    SELECT Quantity INTO current_quantity
    FROM Product
    WHERE ProductID = product_id;
    
    UPDATE Product
    SET Quantity = current_quantity - quantity_ordered
    WHERE ProductID = product_id;
END$$
DELIMITER ;

-- Update Employee table to change all managers to floor managers using a KEY column in WHERE clause
UPDATE Employee
SET Role = 'Floor Manager'
WHERE Role = 'Manager' AND EmployeeID > 0;
