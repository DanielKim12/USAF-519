ER DIAGRAM:

This diagram is the representation of COVID-19 contact tracking system. 

1) The employee entity includes employee_ID as the primary key and contains phone_number, email_address as its attributes. 

2) The employees undergoes the scanning process as they enter and exit the building, the scan entity includes Scan_ID as the primary key and takes employee_ID as the foreign key as they need to connect employee with the measured temperature. It takes temperature and time_stamp as the attributes. 

3) Such employees are required to get tested or they can also self-report if they develop COVID-19 symptoms. The Health report entity includes report_ID as the primary key and employee_ID as the foreign key. It contains symptoms and test_result as its attributes. If one is tested positive, it then triggers the contact tracking system. 

4) It will notify all employees that were in meeting with the employee that tested positive. Meeting entity contains start_time as the primary key and employee_ID as the foreign key as they need to identify who were in the meeting with the infected employee. Thus it contains meeting floor and meeting room as its attributes. 

5) The contact tracking system will also notify the employees that are on the same floor as the infected employee but with concern this time. The location entity will contain employee_ID as the primary key and floor as its attribute. 

Looking at the ERD, it shows the connection between scan, employee, location, and meeting entity. This is because when scanning results in high temperature, the employee is required to take COVID testing, thus this can result in the activation of contact tracking system. 
