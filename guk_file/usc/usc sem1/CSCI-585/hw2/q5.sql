--DB software: livesql/oracle
--Name: GUK IL KIM 
--ID: 3020867072
-- q5: make my own query, I applied division to find the percentages of report being positive between tested places. 

SELECT loc,
   COUNT(*) AS total_count,
   COUNT(CASE WHEN test_result = 'positive' THEN 1 ELSE NULL END) AS positive_count,
   (COUNT(CASE WHEN test_result = 'positive' THEN 1 ELSE NULL END) / COUNT(*)) * 100 AS percentage_positive FROM Test WHERE loc IN ('clinic', 'company', 'hospital')
GROUP BY loc;