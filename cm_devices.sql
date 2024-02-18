/*

1.	Identify a suitable name for the table in which you want to store the data about mobile devices. In this case, you can call the table “devices”.

2.	Identify the data type for each column within the table.

●	A column called “Device ID” that stores whole numbers. In this case, you should use INT as the data type.

●	A second column called “Device name” that is expected to store data as a string-like alphanumeric value. For example, iPhone XR 1.

●	And a third column called “Price”. This final column is expected to store numeric data with possible fractional values. In this case, you should use the DECIMAL data type. With the decimal data type, there is no issue with storing a whole number because the fractional part is separated by a decimal point with 00 on the right side of the number. This is indicated in the third row of the mobile devices table, where the price is 1050.00 (which is equivalent to 1050).

*/

CREATE TABLE devices (
  DeviceID INT PRIMARY KEY,
  DeviceName VARCHAR(255) NOT NULL,
  Price DECIMAL(10, 2) NOT NULL
);

/*

This basic table is shown in the table below, with each column showing device ID, the quanity in stock and the total price. 
*/

CREATE TABLE Stock (
  DeviceID INT PRIMARY KEY,
  Quantity INT,
  TotalPrice DECIMAL(12, 2)
);

/*

2.  Based on 'CM Mobiles' requirements the customers table will have three columns: 

●	username 
●	full name 
●	email address

3.  The customer username contains alphanumeric values such as: Custom001, Custom002, and Custom003. Notice here that the username is always nine characters in length, so choose the CHAR datatype as it allows for a fixed length of characters. In this case, choose 9 characters, no more or less. Therefore you can declare the username in the SQL statement using the following SQL syntax:
*/

CREATE TABLE customers (
  username CHAR(9) PRIMARY KEY,
  full_name VARCHAR(100) NOT NULL,
  email_address VARCHAR(255) NOT NULL
);

CREATE TABLE customer_feedback (
  FeedbackID INT PRIMARY KEY,
  FeedbackType VARCHAR(100) NOT NULL,
  Comment VARCHAR(500) NOT NULL
);

CREATE TABLE address (
  id INT NOT NULL,
  street VARCHAR(255),
  postcode VARCHAR(10),
  town VARCHAR(30) DEFAULT 'Harrow'
);

/*
altering the table adress
*/

DROP TABLE IF EXISTS address;

CREATE TABLE address (
  id INT NOT NULL,
  street VARCHAR(255),
  postcode VARCHAR(10) DEFAULT 'HA97DE',
  town VARCHAR(30) DEFAULT 'Harrow'
);

CREATE TABLE invoice (
    customerName VARCHAR(50), 
    orderDate DATE, 
    quantity INT, 
    price DECIMAL
); 

CREATE TABLE customer_contact_details (
  customer_account_number VARCHAR(20) PRIMARY KEY,
  customer_phone_number VARCHAR(15),
  customer_email_address VARCHAR(255)
);

/*

changing name to Account Customer

*/


ALTER TABLE customer_contact_details
CHANGE COLUMN customer_account_number `Account Customer` VARCHAR(20);

/* or use alias: */

CREATE TABLE customer_contact_details (
  customer_account_number VARCHAR(20) PRIMARY KEY,
  customer_phone_number VARCHAR(15),
  customer_email_address VARCHAR(255)
);

SELECT
  customer_account_number AS `Account Customer`,
  customer_phone_number,
  customer_email_address
FROM
  customer_contact_details;

  