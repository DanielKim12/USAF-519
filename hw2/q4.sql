--DB software: livesql/oracle
--Name: GUK IL KIM 
--ID: 3020867072

-- INSTEAD OF USING TO_DATE( , ) // INSERT INTO Symptom (row_id, date_reported, employee_id, symptom_id) VALUES (1, TO_DATE(‘2023-11-10', ‘YYYY-MM-DD’), 101, 3);
--STRING COMPARISON IN DATABASE 
--TOTAL NUMBER FOR SCAN 
SELECT COUNT(*) AS num_scan FROM Scan WHERE scan_date BETWEEN '2023-01-01' AND '2023-12-31';
--TOTAL NUMBER FOR TEST
SELECT COUNT(*) AS num_test FROM Test WHERE test_date BETWEEN '2023-01-01' AND '2023-12-31';
-- TOTAL NUMBER OF EMPLOYEES WITH SYMPTOMS 
SELECT COUNT(DISTINCT employee_id) AS num_employees_with_symptoms FROM Symptom WHERE date_reported BETWEEN '2023-01-01' AND '2023-12-31';
--TOTAL NUMBER OF POSITIVE CASES 
SELECT COUNT(*) AS num_pos_case FROM Test WHERE test_result = 'positive' AND test_date BETWEEN '2023-01-01' AND '2023-12-31';