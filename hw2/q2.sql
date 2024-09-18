--DB software: livesql/oracle
--Name: GUK IL KIM 
--ID: 3020867072
--q2: Write a query to output the most-self-reported symptom.
-- we want to find most reported symptoms between 1 - 5
 
SELECT symptom_id, COUNT(symptom_id) AS frequency 
FROM Symptom 
GROUP BY symptom_id
ORDER BY frequency DESC
FETCH first 1 rows only;


