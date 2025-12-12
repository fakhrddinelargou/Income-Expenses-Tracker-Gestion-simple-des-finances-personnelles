-- -- 1 Create Database
CREATE DATABASE Smart_Wallet;
-- GO

-- -- 2 Select Database
USE smart_wallet;
-- GO

-- TRUNCATE TABLE income;
-- TRUNCATE TABLE expense;


CREATE TABLE Registers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fullName VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE income (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    amount INT NOT NULL,
    description VARCHAR(100),
    date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE expense (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    amount INT NOT NULL,
    description VARCHAR(100),
    date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DROP DATABASE IF EXISTS smart_wallet;
