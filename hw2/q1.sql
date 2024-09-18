--DB software: livesql/oracle
--Name: GUK IL KIM 
--ID: 3020867072
-- q1: create data table

CREATE TABLE Employee (
    employee_id INT NOT NULL,
    employee_name VARCHAR(10) NOT NULL, 
    phone VARCHAR(12) NOT NULL,  
    office_number VARCHAR(20) NOT NULL, 
    email_address VARCHAR(50) NOT NULL, 
    PRIMARY KEY (employee_id)
);

CREATE TABLE Notification (
    notification_id INT NOT NULL,
    employee_id INT NOT NULL,
    notification_date VARCHAR(10) NOT NULL, 
    notification_type VARCHAR(20) CHECK (notification_type IN ('mandatory', 'optional')),
    PRIMARY KEY (notification_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

CREATE TABLE Meeting (
    meeting_id INT,
    employee_id INT NOT NULL,
    room_number VARCHAR(10) NOT NULL,
    floor_number INT CHECK (floor_number >= 0 AND floor_number <= 10),
    meeting_start_time INT CHECK (meeting_start_time >= 8 AND meeting_start_time <= 18),
    PRIMARY KEY (meeting_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

CREATE TABLE Symptom (
    row_id INT CHECK (row_id >= 1),
    date_reported VARCHAR(10) NOT NULL,
    employee_id INT NOT NULL, 
    symptom_id INT CHECK (symptom_id BETWEEN 1 AND 5), 
    PRIMARY KEY (row_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

CREATE TABLE Scan (
    scan_id INT NOT NULL,
    employee_id INT NOT NULL,
    scan_date VARCHAR(10) NOT NULL,
    scan_time INT CHECK (scan_time >= 0 AND scan_time <= 23),
    temperature DECIMAL(5, 2) NOT NULL,
    PRIMARY KEY (scan_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

CREATE TABLE Test (
    test_id INT NOT NULL,
    loc VARCHAR(20) CHECK (loc IN ('company', 'hospital', 'clinic')),
    test_date VARCHAR(10) NOT NULL,
    test_time INT CHECK (test_time >= 0 AND test_time <= 23),
    employee_id INT NOT NULL,
    test_result VARCHAR(10) CHECK (test_result IN ('positive', 'negative')),
    PRIMARY KEY (test_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

CREATE TABLE Record (
    case_id INT NOT NULL,
    employee_id INT NOT NULL,
    record_date VARCHAR(10) NOT NULL,
    resolution VARCHAR(20) CHECK (resolution IN ('back to work', 'left the company', 'deceased')),
    PRIMARY KEY (case_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

CREATE TABLE HealthStatus (
    row_id INT NOT NULL,
    employee_id INT NOT NULL,
    new_date VARCHAR(20) NOT NULL,
    patient_status VARCHAR(20) CHECK (patient_status IN ('sick', 'hospitalized', 'well')),
    PRIMARY KEY (row_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

INSERT INTO Employee (employee_id, employee_name, phone, office_number, email_address) VALUES (101, 'John', '400-207-5067', 1, 'kimoky@gmail.com');
INSERT INTO Employee (employee_id, employee_name, phone, office_number, email_address) VALUES (102, 'Joe', '600-109-0304', 2, 'fohn.doe@usc.edu');
INSERT INTO Employee (employee_id, employee_name, phone, office_number, email_address) VALUES (103, 'lia', '611-123-4567', 3, 'emily.smith@gmail.com');
INSERT INTO Employee (employee_id, employee_name, phone, office_number, email_address) VALUES (104, 'Kim', '711-987-9000', 4, 'alic23@gmail.com');
INSERT INTO Employee (employee_id, employee_name, phone, office_number, email_address) VALUES (105, 'Joseph', '900-876-9090', 5, 'kooil2@gmail.com');
INSERT INTO Employee (employee_id, employee_name, phone, office_number, email_address) VALUES (106, 'Daniel', '890-900-0002', 6, 'annie12@gmail.com');
INSERT INTO Employee (employee_id, employee_name, phone, office_number, email_address) VALUES (107, 'Kitty', '699-387-8913', 7, 'denusc@gmail.com');
INSERT INTO Employee (employee_id, employee_name, phone, office_number, email_address) VALUES (108, 'Hannah', '499-407-4095', 8, 'shaisti@gmail.com');
INSERT INTO Employee (employee_id, employee_name, phone, office_number, email_address) VALUES (109, 'Jack', '322-400-5069', 9, 'okthisis@gmail.com');
INSERT INTO Employee (employee_id, employee_name, phone, office_number, email_address) VALUES (110, 'Ryan', '655-235-2020', 1, 'noname@gmail.com');
INSERT INTO Employee (employee_id, employee_name, phone, office_number, email_address) VALUES (111, 'Danny', '699-801-9075', 1, 'hahaoj@gmail.com');
INSERT INTO Employee (employee_id, employee_name, phone, office_number, email_address) VALUES (112, 'Chloe', '500-608-9091', 1, 'daniel2@gmail.com');
INSERT INTO Employee (employee_id, employee_name, phone, office_number, email_address) VALUES (113, 'Helene', '455-900-0404', 3, 'elizabeth@gmail.com');
INSERT INTO Employee (employee_id, employee_name, phone, office_number, email_address) VALUES (114, 'Alex', '400-699-8019', 2, 'hannahs@gmail.com');
INSERT INTO Employee (employee_id, employee_name, phone, office_number, email_address) VALUES (115, 'Joyce', '500-408-6987', 8, 'hyejue2@gmail.com');
INSERT INTO Employee (employee_id, employee_name, phone, office_number, email_address) VALUES (116, 'Moe', '455-607-8192', 9, 'danielle@gmail.com');
INSERT INTO Employee (employee_id, employee_name, phone, office_number, email_address) VALUES (117, 'Eric', '889-200-3045', 6, 'okaysongis@gmail.com');
INSERT INTO Employee (employee_id, employee_name, phone, office_number, email_address) VALUES (118, 'Thomas', '456-708-8904', 7, 'lmaois12@gmail.com');
INSERT INTO Employee (employee_id, employee_name, phone, office_number, email_address) VALUES (119, 'Andrew', '600-798-9992', 8, '2000sd@gmail.com');
INSERT INTO Employee (employee_id, employee_name, phone, office_number, email_address) VALUES (120, 'Ehong', '305-465-7063', 3, 'loveis1@gmail.com');
INSERT INTO Employee (employee_id, employee_name, phone, office_number, email_address) VALUES (121, 'Tim', '487-989-1234', 4, 'david80@gmail.com');
INSERT INTO Employee (employee_id, employee_name, phone, office_number, email_address) VALUES (122, 'James', '123-456-7890', 2, 'tommiller@gmail.com');
INSERT INTO Employee (employee_id, employee_name, phone, office_number, email_address) VALUES (123, 'Bob', '001-012-1120', 1, 'heoseon@gmail.com');
----------------------------------------------------------------------------------------------------------- 
INSERT INTO Notification (notification_id, employee_id, notification_date, notification_type) VALUES (1, 101, '2023-10-07', 'mandatory');
INSERT INTO Notification (notification_id, employee_id, notification_date, notification_type) VALUES (2, 101, '2023-01-05', 'optional');
INSERT INTO Notification (notification_id, employee_id, notification_date, notification_type) VALUES (3, 101, '2023-09-07', 'mandatory');
INSERT INTO Notification (notification_id, employee_id, notification_date, notification_type) VALUES (4, 101, '2023-11-10', 'optional');
INSERT INTO Notification (notification_id, employee_id, notification_date, notification_type) VALUES (5, 101, '2023-11-12', 'optional');
INSERT INTO Notification (notification_id, employee_id, notification_date, notification_type) VALUES (6, 101, '2023-12-17', 'optional');
INSERT INTO Notification (notification_id, employee_id, notification_date, notification_type) VALUES (7, 101, '2023-10-27', 'optional');
INSERT INTO Notification (notification_id, employee_id, notification_date, notification_type) VALUES (8, 101, '2023-10-02', 'optional');
INSERT INTO Notification (notification_id, employee_id, notification_date, notification_type) VALUES (9, 101, '2023-06-03', 'optional');
--------------------------------------------------------------------------------------------------------------
INSERT INTO Meeting (meeting_id, employee_id, room_number, floor_number, meeting_start_time) VALUES (10, 101, 20, 8, 8);
INSERT INTO Meeting (meeting_id, employee_id, room_number, floor_number, meeting_start_time) VALUES (11, 102, 20, 8, 9);
INSERT INTO Meeting (meeting_id, employee_id, room_number, floor_number, meeting_start_time) VALUES (12, 103, 20, 6, 10);
INSERT INTO Meeting (meeting_id, employee_id, room_number, floor_number, meeting_start_time) VALUES (13, 104, 20, 6, 10);
INSERT INTO Meeting (meeting_id, employee_id, room_number, floor_number, meeting_start_time) VALUES (14, 105, 20, 9, 9);
INSERT INTO Meeting (meeting_id, employee_id, room_number, floor_number, meeting_start_time) VALUES (15, 106, 20, 9, 9);
INSERT INTO Meeting (meeting_id, employee_id, room_number, floor_number, meeting_start_time) VALUES (16, 107, 20, 6, 10);
INSERT INTO Meeting (meeting_id, employee_id, room_number, floor_number, meeting_start_time) VALUES (17, 108, 20, 1, 12);
INSERT INTO Meeting (meeting_id, employee_id, room_number, floor_number, meeting_start_time) VALUES (18, 109, 20, 5, 11);
INSERT INTO Meeting (meeting_id, employee_id, room_number, floor_number, meeting_start_time) VALUES (19, 110, 20, 1, 12);
INSERT INTO Meeting (meeting_id, employee_id, room_number, floor_number, meeting_start_time) VALUES (20, 112, 20, 1, 12);
INSERT INTO Meeting (meeting_id, employee_id, room_number, floor_number, meeting_start_time) VALUES (21, 111, 20, 5, 11);
INSERT INTO Meeting (meeting_id, employee_id, room_number, floor_number, meeting_start_time) VALUES (22, 120, 20, 4, 13);
INSERT INTO Meeting (meeting_id, employee_id, room_number, floor_number, meeting_start_time) VALUES (23, 121, 20, 3, 14);
INSERT INTO Meeting (meeting_id, employee_id, room_number, floor_number, meeting_start_time) VALUES (24, 122, 20, 6, 10);
INSERT INTO Meeting (meeting_id, employee_id, room_number, floor_number, meeting_start_time) VALUES (25, 123, 20, 2, 17);
INSERT INTO Meeting (meeting_id, employee_id, room_number, floor_number, meeting_start_time) VALUES (26, 118, 20, 1, 18);
INSERT INTO Meeting (meeting_id, employee_id, room_number, floor_number, meeting_start_time) VALUES (27, 119, 20, 1, 18);
INSERT INTO Meeting (meeting_id, employee_id, room_number, floor_number, meeting_start_time) VALUES (28, 115, 20, 1, 18);
---------------------------------------------------------------------------------------------------------------------
INSERT INTO Symptom (row_id, date_reported, employee_id, symptom_id) VALUES (1, '2023-11-10', 101, 3);
INSERT INTO Symptom (row_id, date_reported, employee_id, symptom_id) VALUES (2, '2023-10-11', 102, 2);
INSERT INTO Symptom (row_id, date_reported, employee_id, symptom_id) VALUES (3, '2023-01-11', 104, 1);
INSERT INTO Symptom (row_id, date_reported, employee_id, symptom_id) VALUES (4, '2023-02-12', 105, 5);
INSERT INTO Symptom (row_id, date_reported, employee_id, symptom_id) VALUES (5, '2023-03-13', 111, 4);
INSERT INTO Symptom (row_id, date_reported, employee_id, symptom_id) VALUES (6, '2023-03-15', 122, 1);
INSERT INTO Symptom (row_id, date_reported, employee_id, symptom_id) VALUES (7, '2023-04-17', 112, 1);
INSERT INTO Symptom (row_id, date_reported, employee_id, symptom_id) VALUES (8, '2023-06-18', 120, 3);
INSERT INTO Symptom (row_id, date_reported, employee_id, symptom_id) VALUES (9, '2023-10-19', 115, 4);
INSERT INTO Symptom (row_id, date_reported, employee_id, symptom_id) VALUES (10, '2023-10-20', 116, 2);
INSERT INTO Symptom (row_id, date_reported, employee_id, symptom_id) VALUES (11, '2023-12-20', 117, 2);
INSERT INTO Symptom (row_id, date_reported, employee_id, symptom_id) VALUES (12, '2023-11-23', 118, 2);
INSERT INTO Symptom (row_id, date_reported, employee_id, symptom_id) VALUES (13, '2023-12-22', 119, 5);
INSERT INTO Symptom (row_id, date_reported, employee_id, symptom_id) VALUES (14, '2023-02-21', 103, 3);
INSERT INTO Symptom (row_id, date_reported, employee_id, symptom_id) VALUES (15, '2023-11-21', 106, 5);
---------------------------------------------------------------------------------------------------------------
INSERT INTO Scan (scan_id, employee_id, scan_date, scan_time, temperature) VALUES (1, 101, '2023-03-17', 1, 98.6);
INSERT INTO Scan (scan_id, employee_id, scan_date, scan_time, temperature) VALUES (2, 102, '2023-02-04', 4, 97.5);
INSERT INTO Scan (scan_id, employee_id, scan_date, scan_time, temperature) VALUES (3, 103, '2023-04-05', 22, 92.4);
INSERT INTO Scan (scan_id, employee_id, scan_date, scan_time, temperature) VALUES (4, 104, '2023-10-12', 21, 87.9);
INSERT INTO Scan (scan_id, employee_id, scan_date, scan_time, temperature) VALUES (5, 105, '2023-05-20', 2, 88.6);
INSERT INTO Scan (scan_id, employee_id, scan_date, scan_time, temperature) VALUES (6, 106, '2023-08-11', 7, 90.4);
INSERT INTO Scan (scan_id, employee_id, scan_date, scan_time, temperature) VALUES (7, 107, '2023-10-12', 8, 83.2);
INSERT INTO Scan (scan_id, employee_id, scan_date, scan_time, temperature) VALUES (8, 108, '2023-11-15', 23, 91.1);
---------------------------------------------------------------------------------------------------------------
INSERT INTO Test (test_id, loc, test_date, test_time, employee_id, test_result) VALUES (5, 'company', '2023-11-17', 21, 101, 'positive');
INSERT INTO Test (test_id, loc, test_date, test_time, employee_id, test_result) VALUES (6, 'hospital', '2023-06-05', 21, 102, 'positive');
INSERT INTO Test (test_id, loc, test_date, test_time, employee_id, test_result) VALUES (7, 'hospital', '2023-11-17', 21, 103, 'negative');
INSERT INTO Test (test_id, loc, test_date, test_time, employee_id, test_result) VALUES (8, 'hospital', '2023-07-12', 21, 104, 'negative');
INSERT INTO Test (test_id, loc, test_date, test_time, employee_id, test_result) VALUES (9, 'clinic', '2023-11-11', 21, 111, 'positive');
INSERT INTO Test (test_id, loc, test_date, test_time, employee_id, test_result) VALUES (10, 'company', '2023-08-10', 21, 121, 'positive');
---------------------------------------------------------------------------
INSERT INTO Record (case_id, employee_id, record_date, resolution) VALUES (1, 101, '2023-11-17', 'back to work');
INSERT INTO Record (case_id, employee_id, record_date, resolution) VALUES (2, 101, '2023-10-27', 'back to work');
INSERT INTO Record (case_id, employee_id, record_date, resolution) VALUES (3, 101, '2023-12-11', 'left the company');
INSERT INTO Record (case_id, employee_id, record_date, resolution) VALUES (4, 101, '2023-11-12', 'left the company');
INSERT INTO Record (case_id, employee_id, record_date, resolution) VALUES (5, 101, '2023-06-12', 'deceased');
INSERT INTO Record (case_id, employee_id, record_date, resolution) VALUES (6, 101, '2023-05-20', 'back to work');
----------------------------------
INSERT INTO HealthStatus (row_id, employee_id, new_date, patient_status) VALUES (1, 120, '2023-07-07', 'well');
INSERT INTO HealthStatus (row_id, employee_id, new_date, patient_status) VALUES (2, 111, '2023-04-12', 'hospitalized');
INSERT INTO HealthStatus (row_id, employee_id, new_date, patient_status) VALUES (3, 112, '2023-01-11', 'well');
INSERT INTO HealthStatus (row_id, employee_id, new_date, patient_status) VALUES (4, 113, '2023-12-13', 'hospitalized');
INSERT INTO HealthStatus (row_id, employee_id, new_date, patient_status) VALUES (5, 114, '2023-11-14', 'sick');
INSERT INTO HealthStatus (row_id, employee_id, new_date, patient_status) VALUES (6, 115, '2023-10-11', 'sick');

SELECT * FROM Employee;
SELECT * FROM Notification;
SELECT * FROM Meeting; 
SELECT * FROM Symptom; 
SELECT * FROM Scan;
SELECT * FROM Test;
SELECT * FROM Record; 
SELECT * FROM HealthStatus;




