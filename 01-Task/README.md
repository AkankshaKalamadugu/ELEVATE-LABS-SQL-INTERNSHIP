# E-commerce Database Schema

This repository contains the SQL script and conceptual ER diagram description for a simplified E-commerce database. The schema is designed to manage customers, products, orders, and their relationships.

## Table of Contents

  - [Overview](https://www.google.com/search?q=%23overview)
  - [Database Schema](https://www.google.com/search?q=%23database-schema)
      - [Entities and Relationships](https://www.google.com/search?q=%23entities-and-relationships)
      - [SQL Schema](https://www.google.com/search?q=%23sql-schema)
  - [Conceptual ER Diagram](https://www.google.com/search?q=%23conceptual-er-diagram)
  - [How to Use](https://www.google.com/search?q=%23how-to-use)
  - [Contributing](https://www.google.com/search?q=%23contributing)
  - [License](https://www.google.com/search?q=%23license)

## Overview

This project provides a basic relational database schema for an e-commerce platform. It aims to demonstrate fundamental database design principles, including:

  - Identification of core entities.
  - Definition of relationships between entities.
  - Usage of `PRIMARY KEY` and `FOREIGN KEY` constraints for data integrity.
  - Application of `AUTO_INCREMENT` for surrogate keys.
  - Basic data type selection and constraints (`NOT NULL`, `UNIQUE`, `CHECK`, `ENUM`).

## Database Schema

### Entities and Relationships
  - **`Categories`**: Groups products into different classifications (e.g., Electronics, Clothing).
      - Relationship: One `Category` can have many `Products`.
  - **`Products`**: Items available for sale.
      - Relationship: Many `Products` belong to one `Category`.
  - **`Customers`**: Individuals who purchase products.
      - Relationship: One `Customer` can place many `Orders`.
  - **`Orders`**: Records of a customer's purchase.
      - Relationship: Many `Orders` are placed by one `Customer`.
  - **`Order_Items`**: Details the individual products and quantities within a specific order. This acts as a junction table for the Many-to-Many relationship between `Orders` and `Products`.
      - Relationship: One `Order` can have many `Order_Items`.
      - Relationship: One `Product` can be part of many `Order_Items`.

### SQL Schema
-- Database Creation (Optional, depending on your setup)
-- CREATE DATABASE IF NOT EXISTS ecommerce_db;
-- USE ecommerce_db;

-- 1. Categories Table
CREATE TABLE Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL UNIQUE,
    description TEXT
);

-- 2. Products Table
CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL CHECK (price >= 0),
    stock_quantity INT NOT NULL CHECK (stock_quantity >= 0),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

-- 3. Customers Table
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone_number VARCHAR(20),
    address VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    zip_code VARCHAR(10),
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 4. Orders Table
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10, 2) NOT NULL CHECK (total_amount >= 0),
    order_status ENUM('Pending', 'Processing', 'Shipped', 'Delivered', 'Cancelled') DEFAULT 'Pending',
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- 5. Order_Items Table (Junction table for Orders and Products)
CREATE TABLE Order_Items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    unit_price DECIMAL(10, 2) NOT NULL CHECK (unit_price >= 0),
    -- price at the time of order
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    UNIQUE (order_id, product_id) -- Ensures a product is listed only once per order item
);
```

## Conceptual ER Diagram

Below is a conceptual description of the ER Diagram for this schema. You can use tools like [MySQL Workbench](https://www.mysql.com/products/workbench/), [pgAdmin](https://www.pgadmin.org/), or online ERD tools (e.g., [Draw.io](https://app.diagrams.net/), [Lucidchart](https://www.lucidchart.com/) to generate a visual representation.

**Entities (Rectangles):**

  - `Categories`
  - `Products`
  - `Customers`
  - `Orders`
  - `Order_Items`

**Attributes (Ovals connected to Entities):**

  - `Categories`: `category_id` (PK), `category_name`, `description`
  - `Products`: `product_id` (PK), `product_name`, `description`, `price`, `stock_quantity`, `category_id` (FK)
  - `Customers`: `customer_id` (PK), `first_name`, `last_name`, `email`, `phone_number`, `address`, `city`, `state`, `zip_code`, `registration_date`
  - `Orders`: `order_id` (PK), `customer_id` (FK), `order_date`, `total_amount`, `order_status`
  - `Order_Items`: `order_item_id` (PK), `order_id` (FK), `product_id` (FK), `quantity`, `unit_price`

**Relationships (Lines with Crow's Foot Notation):**

  - `Categories` (1) --- has many --- `Products` (M)
      - *(`category_id` in `Products` references `Categories`)*
  - `Customers` (1) --- places many --- `Orders` (M)
      - *(`customer_id` in `Orders` references `Customers`)*
  - `Orders` (1) --- contains many --- `Order_Items` (M)
      - *(`order_id` in `Order_Items` references `Orders`)*
  - `Products` (1) --- is part of many --- `Order_Items` (M)
      - *(`product_id` in `Order_Items` references `Products`)*

## How to Use

To set up this database schema:

1.  **Choose your SQL client/tool:** MySQL Workbench, pgAdmin, SQLiteStudio, or your preferred command-line client.
2.  **Connect to your database server.**
3.  **(Optional) Create a new database:**
    ```sql
    CREATE DATABASE IF NOT EXISTS ecommerce_db;
    USE ecommerce_db; -- For MySQL
    -- Or for PostgreSQL: \c ecommerce_db; after creating
    ```
4.  **Execute the SQL script:** Copy and paste the `CREATE TABLE` statements provided in the [SQL Schema](https://www.google.com/search?q=%23sql-schema) section into your SQL client and execute them. Ensure you create tables in the correct order to satisfy foreign key dependencies (e.g., `Categories` before `Products`, `Customers` before `Orders`).
