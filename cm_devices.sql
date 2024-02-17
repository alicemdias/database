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