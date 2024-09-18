--DB software: livesql/oracle
--Name: GUK IL KIM 
--ID: 3020867072
--q3: Write a query to output the 'sickest' floor 
--floor with most people with symptoms 

WITH SickCounts AS (
    SELECT m.floor_number, COUNT(*) AS sick_count
    FROM HealthStatus h
    JOIN Employee e ON h.employee_id = e.employee_id
    JOIN Meeting m ON e.employee_id = m.employee_id
    WHERE h.patient_status IN ('sick', 'hospitalized')
    GROUP BY m.floor_number
),
TotalSickCounts AS (
    SELECT SUM(sick_count) AS total_sick_count
    FROM SickCounts
)
SELECT s.floor_number, t.total_sick_count
FROM SickCounts s
CROSS JOIN TotalSickCounts t
WHERE s.sick_count = (SELECT MAX(sick_count) FROM SickCounts);