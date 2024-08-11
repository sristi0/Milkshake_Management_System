CREATE DATABASE Milkshake_Store_DB; 
USE Milkshake_Store_DB; Creating tables: 
CREATE TABLE Stores ( 
    StoreID INT PRIMARY KEY, 
    StoreName VARCHAR(50), 
    Address VARCHAR(100), 
City VARCHAR(50), 
State VARCHAR(50), 
ZipCode VARCHAR(10) 
); 
 
CREATE TABLE Flavours ( 
    FlavourID INT PRIMARY KEY, 
    FlavourName VARCHAR(50), 
    Description VARCHAR(100), 
    Ingredients VARCHAR(200) 
); 
 
CREATE TABLE Milkshakes ( 
    MilkshakeID INT PRIMARY KEY, 
    MilkshakeName VARCHAR(50), 
    Description VARCHAR(100), 
    Price DECIMAL(10, 2), 
    FlavourID INT, 
    FOREIGN KEY (FlavourID) REFERENCES Flavours(FlavourID)); 
 
CREATE TABLE Customers ( 
    CustomerID INT PRIMARY KEY, 
    FirstName VARCHAR(50), 
    LastName VARCHAR(50), 
    Email VARCHAR(100), 
    StoreID INT, 
    FOREIGN KEY (StoreID) REFERENCES Stores(StoreID) 
); 
 
CREATE TABLE Orders ( 
OrderID INT PRIMARY KEY, 
CustomerID INT, 
OrderDate DATE, 
MilkshakeID INT, 
StoreID INT, 
AmountSpent DECIMAL(10, 2), 
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID), 
    FOREIGN KEY (MilkshakeID) REFERENCES Milkshakes(MilkshakeID), 
    FOREIGN KEY (StoreID) REFERENCES Stores(StoreID) 
); 
 
CREATE TABLE Rewards ( 
    RewardID INT PRIMARY KEY, 
    RewardName VARCHAR(50), 
    Description VARCHAR(100), 
    StartDate DATE, 
    EndDate DATE, 
    CustomerID INT, 
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)); 
 
Inserting values in the tables: 
INSERT INTO Stores (StoreID, StoreName, Address, City, State, ZipCode) 
VALUES 
    (1, 'Milkshake Paradise', '123 ABC Street', 'Mumbai', 'Maharashtra', '400001'), 
    (2, 'Shake Haven', '456 XYZ Road', 'Delhi', 'Delhi', '110001'), 
    (3, 'Chill Vibes', '789 PQR Avenue', 'Bangalore', 'Karnataka', '560001'), 
    (4, 'Cool Shake Shop', '10 Main Street', 'Kolkata', 'West Bengal', '700001'), 
    (5, 'Shake Corner', '15 MG Road', 'Chennai', 'Tamil Nadu', '600001'); 
     
INSERT INTO Flavours (FlavourID, FlavourName, Description, Ingredients) 
VALUES 
(1, 'Vanilla', 'Classic vanilla flavour', 'Milk, Vanilla extract, Sugar'), 
(2, 'Chocolate', 'Rich and creamy chocolate flavour', 'Milk, Chocolate syrup, Sugar'), 
(3, 'Strawberry', 'Sweet and fruity strawberry flavour', 'Milk, Strawberry syrup, Sugar'), 
(4, 'Mango', 'Tropical and refreshing mango flavour', 'Milk, Mango puree, Sugar'), 
(5, 'Banana', 'Creamy and ripe banana flavour', 'Milk, Banana, Sugar'), 
(6, 'Oreo', 'Cookies and cream flavour', 'Milk, Oreo cookies, Sugar'), 
    (7, 'Caramel', 'Rich and smooth caramel flavour', 'Milk, Caramel syrup, Sugar'), 
    (8, 'Coffee', 'Bold and aromatic coffee flavour', 'Milk, Coffee extract, Sugar'), 
    (9, 'Pistachio', 'Creamy and nutty pistachio flavour', 'Milk, Pistachio paste, Sugar'), 
    (10, 'Black Currant', 'Sweet and tangy black currant flavour', 'Milk, Black currant syrup, Sugar'); 
     
 INSERT INTO Milkshakes (MilkshakeID, MilkshakeName, Description, Price, FlavourID) 
 VALUES 
    (101, 'Vanilla Shake', 'Smooth and refreshing vanilla shake', 150, 1), 
    (102, 'Chocolate Shake', 'Decadent and indulgent chocolate shake', 180, 2), 
    (103, 'Strawberry Shake', 'Delicious and fruity strawberry shake', 160, 3), 
    (104, 'Mango Shake', 'Tropical and refreshing mango shake', 170, 4), 
    (105, 'Banana Shake', 'Creamy and delicious banana shake', 160, 5), 
    (106, 'Oreo Shake', 'Rich and cookies-n-cream flavoured shake', 190, 6), 
    (107, 'Caramel Shake', 'Smooth and caramel-flavoured shake', 170, 7), 
    (108, 'Coffee Shake', 'Bold and aromatic coffee-flavoured shake', 180, 8), 
    (109, 'Pistachio Shake', 'Creamy and nutty pistachio-flavoured shake', 200, 9), 
    (110, 'Mint Chocolate Chip Shake', 'Refreshing mint and chocolate chip flavoured shake', 190, 2), 
    (111, 'Cookies and Cream Shake', 'Classic cookies and cream flavoured shake', 180, 6), 
    (112, 'Salted Caramel Shake', 'Sweet and salty salted caramel flavoured shake', 170, 7), 
    (113, 'Hazelnut Shake', 'Rich and nutty hazelnut flavoured shake', 200, 8), 
    (114, 'Almond Shake', 'Creamy and almond-flavoured shake', 190, 1), 
(115, 'Rocky Road Shake', 'Decadent chocolate, marshmallow, and nut flavoured shake', 210, 2), 
(116, 'Raspberry Shake', 'Sweet and tangy raspberry-flavoured shake', 170, 3), 
(117, 'Pineapple Shake', 'Refreshing and tropical pineapple-flavoured shake', 160, 4), 
(118, 'Black Currant Shake', 'Sweet and tangy black currant-flavoured shake', 180, 10), 
(119, 'Blueberry Shake', 'Delicious and fruity blueberry-flavoured shake', 160, 3), 
(120, 'Peach Shake', 'Juicy and refreshing peach-flavoured shake', 170, 4), 
(121, 'Mint Shake', 'Cool and refreshing mint-flavoured shake', 180, 2), 
(122, 'Coconut Shake', 'Creamy and tropical coconut-flavoured shake', 190, 5), 
(123, 'Butterscotch Shake', 'Rich and buttery butterscotch-flavoured shake', 170, 7), 
(124, 'Peanut Butter Shake', 'Smooth and nutty peanut butter-flavoured shake', 200, 6), 
    (125, 'Red Velvet Shake', 'Indulgent and velvety red velvet cake-flavoured shake', 210, 2), 
    (126, 'Lemon Shake', 'Tangy and refreshing lemon-flavored shake', 160, 3), 
    (127, 'Watermelon Shake', 'Juicy and summery watermelon-flavoured shake', 170, 4), 
    (128, 'Pistachio Almond Shake', 'Creamy and nutty blend of pistachio and almond flavours', 190, 9), 
    (129, 'Mocha Shake', 'Rich and indulgent blend of coffee and chocolate flavours', 180, 8), 
    (130, 'Coconut Mango Shake', 'Tropical blend of coconut and mango flavours', 190, 4), 
    (131, 'Caramel Macchiato Shake', 'Smooth and caramel-flavoured shake with a hint of coffee', 180, 
7), 
    (132, 'Black Forest Shake', 'Decadent and chocolatey shake with cherry flavour', 200, 2), 
    (133, 'Peanut Butter Banana Shake', 'Creamy and nutty blend of peanut butter and banana flavours', 190, 5), 
    (134, 'Strawberry Kiwi Shake', 'Refreshing combination of strawberry and kiwi flavours', 170, 3);    
     
    INSERT INTO Customers (CustomerID, FirstName, LastName, Email,StoreID ) 
VALUES 
    (1002231, 'Rahul', 'Sinha', 'rahul@yahoo.com',1), 
    (1002232, 'Priya', 'Sharma', 'priya@hotmail.com',2), 
    (1002233, 'Amit', 'Patel', 'amitp@gmail.com',4), 
    (1002234, 'Neha', 'Gupta', 'neha123@yahoo.com',3), 
    (1002235, 'Rajesh', 'Kumar', 'rajeshk@gmail.com',2), 
    (1002236, 'Anita', 'Shah', 'anita.shah@hotmail.com',3), 
(1002237, 'Sandeep', 'Singh', 'sandeep123@gmail.com',4), 
(1002238, 'Pooja', 'Mishra', 'pooja.mishra@yahoo.com',2), 
(1002239, 'Sanjay', 'Jain', 'sanjayjain@gmail.com',2), 
(1002240, 'Mehak', 'Malhotra', 'mehakm@hotmail.com',2), 
(1002241, 'Deepak', 'Sharma', 'deepak.s@gmail.com',2), 
(1002242, 'Riya', 'Chopra', 'riya.c@yahoo.com',3), 
(1002243, 'Arun', 'Kumar', 'arunk456@gmail.com',3), 
(1002244, 'Swati', 'Mehta', 'swatim321@yahoo.com',3), 
(1002245, 'Rajat', 'Gupta', 'rajatg@gmail.com',2), 
(1002246, 'Neha', 'Sharma', 'nehash@gmail.com',1), 
    (1002247, 'Manish', 'Verma', 'manishv@gmail.com',4), 
    (1002248, 'Pooja', 'Shah', 'poojas@yahoo.com',4), 
    (1002249, 'Gaurav', 'Jain', 'gjain@hotmail.com',4), 
    (1002250, 'Kavita', 'Mishra', 'kavitam@yahoo.com',5), 
    (1002251, 'Aman', 'Kumar', 'amank@gmail.com',5), 
    (1002252, 'Anjali', 'Sharma', 'anjalis@yahoo.com',1),     (1002253, 'Vikram', 'Singh', 'vikrams@gmail.com',1), 
    (1002254, 'Divya', 'Verma', 'divyav@hotmail.com',1), 
    (1002255, 'Rajesh', 'Shah', 'rajeshs@gmail.com',1), 
    (1002256, 'Neeta', 'Jain', 'neetaj@yahoo.com',2), 
    (1002257, 'Sachin', 'Gupta', 'sachingupta@gmail.com',3), 
    (1002258, 'Simran', 'Malhotra', 'simranm@yahoo.com',4), 
    (1002259, 'Vivek', 'Patel', 'vivekp@hotmail.com',5), 
    (1002260, 'Nisha', 'Chopra', 'nishac@gmail.com',1), 
    (1002261, 'Rohit', 'Sinha', 'rohits@gmail.com',2), 
    (1002262, 'Preeti', 'Shah', 'preetis@yahoo.com',3), 
    (1002263, 'Saurabh', 'Kumar', 'saurabhk@gmail.com',4), 
    (1002264, 'Shweta', 'Mishra', 'shwetam@yahoo.com',5), 
    (1002265, 'Alok', 'Verma', 'alokv@gmail.com',4), 
    (1002266, 'Aarti', 'Jain', 'aartij@yahoo.com',1), 
    (1002267, 'Rajiv', 'Gupta', 'rajivg@hotmail.com',1), 
(1002268, 'Neha', 'Sharma', 'nehas@gmail.com',1), 
(1002269, 'Manish', 'Verma', 'manishv@gmail.com',2), 
(1002270, 'Pooja', 'Shah', 'poojas@yahoo.com',4); 
 
INSERT INTO Orders (OrderID, CustomerID, OrderDate, MilkshakeID, StoreID, AmountSpent) VALUES 
(10021, 1002231, '2023-06-01', 101, 1, 300.00), 
(10022, 1002232, '2023-06-02', 104, 4, 150.00), 
(10023, 1002233, '2023-06-03', 103, 3, 450.00), 
(10024, 1002234, '2023-06-04', 105, 5, 200.00), 
    (10025, 1002235, '2023-06-05', 102, 2, 100.00), 
    (10026, 1002236, '2023-06-06', 101, 1, 300.00), 
    (10027, 1002237, '2023-06-07', 104, 4, 150.00), 
    (10028, 1002238, '2023-06-08', 103, 3, 450.00), 
    (10029, 1002239, '2023-06-09', 105, 5, 200.00), 
    (10030, 1002240, '2023-06-10', 102, 2, 100.00), 
    (10031, 1002241, '2023-06-11', 105, 1, 200.00), 
    (10032, 1002242, '2023-06-12', 102, 3, 100.00), 
    (10033, 1002243, '2023-06-13', 104, 5, 150.00), 
    (10034, 1002244, '2023-06-14', 101, 2, 300.00), 
    (10035, 1002245, '2023-06-15', 103, 4, 450.00); 
 
INSERT INTO Rewards (RewardID, RewardName, Description, StartDate, EndDate, CustomerID) VALUES 
    (1, 'Loyalty Program', 'Earn points for every milkshake purchase.', '2023-01-01', '2023-12-31', 1002232), 
    (2, 'Referral Bonus', 'Refer a friend and earn bonus reward points', '2023-06-01', '2023-06-30', 1002232), 
    (3, 'Frequent Buyer', 'Earn rewards for being a loyal customer', '2023-01-01', '2023-12-31', 1002233), 
    (4, 'Seasonal Promotion', 'Exclusive rewards during seasonal promotions', '2023-07-01', '2023-0731', 1002234), 
    (5, 'Anniversary Special', 'Celebrate your anniversary with a special reward', '2023-03-15', '202303-15', 1002235); 
