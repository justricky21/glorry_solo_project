DROP TABLE deliveries;
DROP TABLE drivers;
DROP TABLE customers;

CREATE TABLE drivers
(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  lorry VARCHAR(255),
  lorry_plate VARCHAR(255)
);

CREATE TABLE customers
(
  id SERIAL8 PRIMARY KEY,
  company_name VARCHAR(255),
  contact_name VARCHAR(255),
  email VARCHAR(255),
  phone_number INT,
  address VARCHAR(255)
);

CREATE TABLE deliveries
(
  id SERIAL8 PRIMARY KEY,
  driver_id INT8 REFERENCES drivers(id),
  customer_id INT8 REFERENCES customers(id),
  contents VARCHAR(255)
);
