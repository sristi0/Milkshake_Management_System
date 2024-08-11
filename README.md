# Milkshake_Management_System
This project is a Database Management System (DBMS) for managing milkshake stores. It includes functionalities for handling various entities like stores, customers, orders, and rewards.
The aim of this project is to design and implement a database system for a milkshake shop. The system includes the following entities:

Flavours
Milkshakes
Stores
Customers
Orders
Rewards
The database enables tracking of milkshake flavours, store locations, customer orders, and rewards based on specific criteria.

Database Structure

Tables Created:
Stores: Information about the store names and locations.
Flavours: Details of different milkshake flavours.
Milkshakes: Data about various types of milkshakes available in stores.
Customers: Information on customers.
Orders: Records of orders placed by customers.
Rewards: Rewards offered to customers.
Relationships:
One-to-many relationship between Flavours and Milkshakes (one flavour can be used in multiple milkshakes).
One-to-many relationship between Customers and Orders (one customer can place multiple orders).
One-to-many relationship between Customers and Rewards (one customer can have multiple rewards).
Keys:
Primary Keys: StoreID, FlavourID, MilkshakeID, CustomerID, OrderID, and RewardID.
Foreign Keys: StoreID, FlavourID, MilkshakeID, and CustomerID.
Technologies Used

Database Management System: MySQL
