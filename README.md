# HomeGuard-Database

### Project HomeGuard
This is one of my capstone project developed during the Akamai Network Engineering Course, **HomeGuard** is the name of my project and this is the database system designed to monitor and manage network security incidents, customer/employee data, and user authentication. This project demonstrates database design, query implementation, and practical use cases for tracking cybersecurity events in real-world scenarios.  

--- 
- **Database Schema**:  
  - **Customers**: Stores client details (name, company, contact info).  
  - **Employees**: Manages employee records and roles.  
  - **Login**: Handles authentication for both customers (`C`) and employees (`E`).  
  - **Incident**: Logs network security events (source/destination IPs, protocols, timestamps) linked to customers.  

- **Advanced SQL Queries**:  
  - **User Management**: Join operations to retrieve customer/employee details with login credentials.  
  - **Incident Analysis**: Aggregates incident counts per company, identifies max/min incident occurrences, and calculates days since the last incident.  
  - **Data Formatting**: Generates mailing labels and formats incident dates for reporting.  
  - **Complex Joins**: Utilizes `INNER JOIN`, `LEFT JOIN`, and `RIGHT JOIN` to correlate data across tables.  

- **Use Cases**:  
  - Track suspicious network activity (e.g., SYN flood attempts, DHCP requests).  
  - Monitor customer-specific security incidents for proactive threat resolution.  
  - Generate reports for HR, IT teams, and customer support.  
---

#### **Structure**  
- **SQL Script**: Contains table definitions, sample data inserts, and all analytical queries (A-G).  
- **Example Queries**: Demonstrates skills in aggregation, subqueries, date functions, and string formatting.  
- **Documentation**: Detailed comments explaining query logic and database design.  

---
