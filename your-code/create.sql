CREATE DATABASE IF NOT EXISTS car_dealership;

CREATE TABLE IF NOT EXISTS car_dealership.cars(
car_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
vin VARCHAR(50) NOT NULL,
manufacturer VARCHAR(50) NOT NULL,
model VARCHAR(30) NOT NULL,
`year` YEAR NOT NULL,
color VARCHAR(30),
is_active TINYINT(1) NOT NULL DEFAULT 1, 
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS car_dealership.customers(
id INTEGER PRIMARY KEY AUTO_INCREMENT,
customer_id INTEGER UNSIGNED ,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
phone VARCHAR(30) NOT NULL,
email VARCHAR(30) NOT NULL,
address VARCHAR(30),
city VARCHAR(30),
state VARCHAR(30),
country VARCHAR(30),
postal_code VARCHAR(8),
is_active TINYINT(1) NOT NULL DEFAULT 1, 
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS car_dealership.sellers(
id INTEGER PRIMARY KEY AUTO_INCREMENT,
seller_id INTEGER UNSIGNED,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
store VARCHAR(30) NOT NULL,
is_active TINYINT(1) NOT NULL DEFAULT 1, 
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS car_dealership.invoices(
id INTEGER PRIMARY KEY AUTO_INCREMENT,
invoice_number VARCHAR(50) NOT NULL ,
`date` DATETIME NOT NULL,
car_id INTEGER,
customer_id INTEGER,
seller_id INTEGER,
is_active TINYINT(1) NOT NULL DEFAULT 1, 
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

#Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'AUTO_INCREMENT, vin VARCHAR(50) NOT NULL, manufacturer VARCHAR(50) NOT NULL, mod' at line 2
describe car_dealership.cars

-- 0 row(s) affected, 1 warning(s): 1681 Integer display width is deprecated and will be removed in a future release.