/* THIS PROJECT IS ONE OF MY CAPSTONE PROJECT IN AKAMAI NETWORK ENGINEERING COURSE 
CREATED BY: JOSHUA CARL SOGUILON
*/

/* CREATING THE DATABASE */

CREATE DATABASE homeguard; -- PROJECT HOMEGUARD

USE homeguard;

/* CREATING THE TABLES */

CREATE TABLE customers ( -- CUSTOMERS TABLE
	customer_id int NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    first_name VARCHAR(30),      
    last_name VARCHAR(30),
    company_name VARCHAR(50),
    email VARCHAR(50) UNIQUE NOT NULL,        
    phone_number VARCHAR(12),
    address VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(2),
    zip_code VARCHAR(5)
);

SHOW COLUMNS from customers; 

CREATE TABLE employees ( -- EMPLOYEES TABLE
	employee_id int NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    first_name VARCHAR(30),      
    last_name VARCHAR(30),
    email VARCHAR(50) UNIQUE NOT NULL,        
    phone_number VARCHAR(12),
    position VARCHAR(30)
);

SHOW COLUMNS from employees;

CREATE TABLE login ( -- LOGIN TABLE
	login_id int NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    person_id int NOT NULL,      
    username VARCHAR(30),
    passwd VARCHAR(50),
    person_type CHAR(1)
);

SHOW COLUMNS from login;

CREATE TABLE incident ( -- INCIDENT TABLE
	incident_id int NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    packetDateTime DATETIME NOT NULL,      
    srcIP VARCHAR(39),
    dstIP VARCHAR(39),
	protocol VARCHAR(10),
    srcPort int,
    dstPort int,
    hostIp VARCHAR(39),
    servIp VARCHAR(39),
    srcMac VARCHAR(50),
    dstMac VARCHAR(50),
    info text,
    customerNumber int
);

SHOW COLUMNS from incident;

/* INSERTING VALUES */

INSERT INTO customers
VALUES 

(DEFAULT, 'George', 'Wishingwell', 'WhiteHomeless', 'georgew@whitehomeless.com', '+539291010', '69 St. Bollocks, Freeway, USA', 'New York', 'US', '6969'),
(DEFAULT, 'Alice', 'Smith', 'TechNova', 'alice.smith@technova.com', '+538410292', '123 Elm St., Suite 405', 'Los Angeles', 'CA', '90210'),
(DEFAULT, 'Bob', 'Johnson', 'InnovateCorp', 'bob.johnson@innovatecorp.com', '+532091293', '456 Oak Dr., Apt 12', 'Chicago', 'IL', '60616'),
(DEFAULT, 'Catherine', 'Lewis', 'BrightWorks', 'catherine.lewis@brightworks.com', '+539845019', '789 Pine Ave.', 'San Francisco', 'CA', '94109'),
(DEFAULT, 'David', 'Wilson', 'FuturePaths', 'david.wilson@futurepaths.net', '+531201942', '321 Maple Ct., Floor 3', 'Austin', 'TX', '78758'),
(DEFAULT, 'Eva', 'Brown', 'GreenSolutions', 'eva.brown@greensolutions.org', '+538910743', '654 Cedar St.', 'Portland', 'OR', '97214'),
(DEFAULT, 'Frank', 'Thomas', 'GlobalGadgets', 'frank.thomas@globalgadgets.com', '+537420183', '876 Birch Rd.', 'Seattle', 'WA', '98101'),
(DEFAULT, 'Grace', 'Miller', 'CodeConstruct', 'grace.miller@codeconstruct.dev', '+539108230', '135 Willow Blvd.', 'Boston', 'MA', '02116'),
(DEFAULT, 'Henry', 'Clark', 'VisionaryTech', 'henry.clark@visionarytech.io', '+531204857', '987 Aspen Ln.', 'Miami', 'FL', '33101'),
(DEFAULT, 'Ivy', 'Harris', 'PixelEdge', 'ivy.harris@pixeledge.co', '+535917385', '543 Redwood Blvd.', 'Denver', 'CO', '80202'),
(DEFAULT, 'Jack', 'Garcia', 'NextWave', 'jack.garcia@nextwave.biz', '+539420382', '432 Dogwood Dr.', 'Atlanta', 'GA', '30303');

SELECT * 
FROM customers;

INSERT INTO employees
VALUES

(DEFAULT, 'Josh', 'Cool', 'joshcool@email.com', '+638829291', 'Admin'),
(DEFAULT, 'Carl', 'Smith', 'carl.smith@email.com', '+639910381', 'Manager'),
(DEFAULT, 'Steph', 'Bennett', 'steph.bennett@email.com', '+639827410', 'Intern'),
(DEFAULT, 'Kurt', 'Johnson', 'kurt.johnson@email.com', '+639827500', 'Intern'),
(DEFAULT, 'Alice', 'White', 'alice.white@email.com', '+639845182', 'HR Specialist'),
(DEFAULT, 'Bob', 'Wilson', 'bob.wilson@email.com', '+639123457', 'Engineer'),
(DEFAULT, 'David', 'Taylor', 'david.taylor@email.com', '+639321789', 'Technician'),
(DEFAULT, 'Eva', 'Brown', 'eva.brown@email.com', '+639421843', 'Project Manager'),
(DEFAULT, 'Frank', 'Lewis', 'frank.lewis@email.com', '+639535298', 'Sales Representative'),
(DEFAULT, 'Grace', 'Clark', 'grace.clark@email.com', '+639632147', 'Designer');

SELECT * 
FROM employees;

INSERT INTO login
VALUES

-- Employees
(DEFAULT, 1, 'joshcool09', 'iamcool$xxP4ss', 'E'),
(DEFAULT, 2, 'carlsmith_mgr', 'secureCarl#123', 'E'),
(DEFAULT, 5, 'alice_hr', 'A1iceHR@Secure', 'E'),
(DEFAULT, 6, 'bob_engineer', 'BobEng@1n3$', 'E'),
(DEFAULT, 7, 'david_tech', 'Tech$David07', 'E'),
(DEFAULT, 8, 'eva_pm', 'EvaPM!2023', 'E'),
(DEFAULT, 9, 'frank_sales', 'FrankS@le5!', 'E'),
(DEFAULT, 10, 'grace_design', 'D3signGrace@99', 'E'),
-- Customers
(DEFAULT, 1, 'georgewishing', 'homelessSecure!21', 'C'),
(DEFAULT, 2, 'alice_techie', 'Alic3P@ssword$', 'C'),
(DEFAULT, 3, 'bob.j2023', 'B0bStrong$90', 'C'),
(DEFAULT, 4, 'catherine_light', 'Cath#BrightPass1', 'C'),
(DEFAULT, 5, 'david_future', 'FutP@thsDavid!', 'C'),
(DEFAULT, 6, 'eva_green', 'Eva!Gr33n#21', 'C'),
(DEFAULT, 7, 'frank_global', 'Gl0balF@nk!', 'C'),
(DEFAULT, 8, 'grace_code', 'CodeGrace@12$', 'C'),
(DEFAULT, 9, 'henry_vision', 'VisionHenry@23', 'C'),
(DEFAULT, 10, 'ivy_pixel', 'P1xIvy#Edge99', 'C');

SELECT * 
FROM login;

INSERT INTO incident 
VALUES 

(DEFAULT,'2023-02-08 03:20:00','172.16.137.40','172.16.137.40','DHCP','68','67','172.16.137.40','172.16.137.1','08:00:2b:ef:ab:7c','00:1d:7e:7c:c4:8d','DHCP Request  - Transaction ID 0xfe9ceb09', '5'),
(DEFAULT,'2023-03-08 13:20:15','172.16.137.1','172.16.137.1','DHCP','67','68','172.16.137.1','255.255.255.255','00:1d:7e:7c:c4:8d','ff:ff:ff:ff:ff:ff','DHCP ACK      - Transaction ID 0xfe9ceb09','5'),
(DEFAULT,'2022-08-24 10:35:30','10.100.25.14','10.100.25.14','TCP','1065','139','10.100.25.14','10.100.18.12','00:15:c5:3c:4f:9e','00:03:ff:6c:8b:24','1065  >  139 [SYN] Seq=0 Win=8 Len=0', '3'),
(DEFAULT,'2022-09-24 10:35:15','10.100.25.14','10.100.25.14','TCP','19491','135','10.100.25.14','10.100.18.12','00:15:c5:3c:4f:9e','00:03:ff:6c:8b:24','19491  >  135 [SYN] Seq=0 Win=8 Len=0', '3'),
(DEFAULT,'2022-10-24 10:35:35','10.100.25.14','10.100.25.14','TCP','7358','445','10.100.25.14','10.100.18.12','00:15:c5:3c:4f:9e','00:03:ff:6c:8b:24','7358  >  445 [SYN] Seq=0 Win=8 Len=0', '3'),
(DEFAULT,'2022-07-10 11:32:42','23.67.253.43','23.67.253.43','TCP','80','49163','54.10.120.45','192.168.137.83','a8:b1:d4:ac:fe:7d','00:21:9b:5b:d1:7a','80  >  49163 [SYN, ACK] Seq=0 Ack=1 Win=14600 Len=0 MSS=1367 SACK_PERM=1 WS=32', '8'), 
(DEFAULT,'2022-08-10 11:32:55','192.168.137.83','192.168.137.83','TCP','49163','80','192.168.137.83','54.10.120.45','00:21:9b:5b:d1:7a','a8:b1:d4:ac:fe:7d','49163  >  80 [ACK] Seq=1 Ack=1 Win=65536 Len=0', '8'),
(DEFAULT,'2022-09-10 11:32:21','192.168.137.83','192.168.137.83','HTTP','49163','80','192.168.137.83','54.10.120.45','00:21:9b:5b:d1:7a','a8:b1:d4:ac:fe:7d','HEAD /v9/windowsupdate/redir/muv4wuredir.cab?1507101531 HTTP/1.1', '8'),
(DEFAULT,'2022-10-10 11:32:38','23.67.253.43','23.67.253.43','TCP','80','49163','54.10.120.45,192','168.137.83','a8:b1:d4:ac:fe:7d','00:21:9b:5b:d1:7a','80  >  49163 [ACK] Seq=1 Ack=174 Win=15680 Len=0', '8');

SELECT * 
FROM incident;

/* A - QUERY */

/* This query retrieves only the customer details (first name, last name, company, email, and username) that has the username by joining 
the 'customers' and 'login' tables based on matching customer_id and person_id. */

SELECT 
	customers.first_name, 
    customers.last_name, 
    customers.company_name, 
    customers.email, 
    login.username
FROM customers 
INNER JOIN login 
ON customers.customer_id = login.person_id
WHERE login.person_type = 'C';

/* B - QUERY */

/* This query retrieves all the employees details (first name, last name, email, position and username) regardless if the employee has a username by joining 
the 'employees' and 'login' tables based on matching employee_id and person_id. */

SELECT employees.first_name, 
       employees.last_name, 
       employees.position, 
       employees.email, 
       login.username
FROM employees
LEFT JOIN login 
ON employees.employee_id = login.person_id 
AND login.person_type = 'E';

/* C- QUERY */

/* Retrieves customer details (first name, last name, company) along with incident information
 (source IP, destination IP, and incident info) by performing a RIGHT JOIN between the 'customers' 
 and 'incident' tables, based on matching customer_id and customerNumber. Includes all incidents. */

SELECT 
	customers.first_name, 
    customers.last_name, 
    customers.company_name, 
    incident.srcIp, 
    incident.dstIP, 
    incident.info
FROM customers
RIGHT JOIN incident
ON customers.customer_id = incident.customerNumber;

/* D - QUERY */
/* This query concatenates customer details (full name, company, address, and location) into a single column 'mailingList' 
 with each piece of information on a new line, formatted for mailing purposes.*/
 
SELECT 
	concat_ws(
    '\n',
    concat(first_name,' ', last_name),
    company_name,
    address,
    concat(city, ' ', state, ', ', zip_code)
    ) AS mailingList
FROM customers;

/*E - QUERY */

/* This query retrieves the company name and the count of incidents associated with each customer, 
   sorting the results by the number of incidents in ascending order.*/

SELECT 
	company_name, 
	count(incident_id)
FROM customers
RIGHT JOIN incident
ON customers.customer_id = incident.customerNumber
GROUP BY customerNumber
ORDER BY count(incident_id) ASC;

/*F - QUERY */

/* This query retrieves the company name that has only the maximum and the minimum incident.*/

SELECT 
	company_name, 
	count(incident_id) as incident_count
FROM customers
RIGHT JOIN incident
ON customers.customer_id = incident.customerNumber
GROUP BY customerNumber
HAVING count(incident_id) = (SELECT max(incident_count) FROM 
    (SELECT company_name, COUNT(incident_id) AS incident_count
     FROM customers
     RIGHT JOIN incident ON customers.customer_id = incident.customerNumber
     GROUP BY company_name) AS counts)
OR COUNT(incident_id) = (SELECT MIN(incident_count) FROM 
    (SELECT company_name, COUNT(incident_id) AS incident_count
     FROM customers
     RIGHT JOIN incident ON customers.customer_id = incident.customerNumber
     GROUP BY company_name) AS counts);	
     
/* G - QUERY */

/* 
This query retrieves the customer ID (referred to as 'customer_number'), the formatted date of their last incident ('lastIncident'), 
and the number of days since their last incident ('daysSinceLastIncident') from the 'customers' and 'incident' tables. 
The 'date_format' function is used to format the 'packetDateTime' of the incident, and the 'datediff' function calculates the days 
since the last incident.
*/

SELECT 
	c.customer_id AS customer_number, 
    date_format(i.packetDateTime, '%m/%d/%Y') AS lastIncident, 
    datediff(current_date, i.packetDateTime) AS daysSinceLastIncident
FROM customers c
INNER JOIN incident i
ON c.customer_id = i.customerNumber
GROUP BY customer_number;
     