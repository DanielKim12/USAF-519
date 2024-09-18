This is read.me for hw 2: 

For this assignemnet I have used live sql and ran it on oracle to check if my codes are valid. 

part 1) I create 8 entity tables to correlate relationships between attributes, primary key, and foreign key. As all entities 
contained their own primary keys, I figured that we needed to generate all 8 entity tables to run our queries. Some clarifications 
to mention for my implmenetation in part 1, I used VARCHAR to implement dates as in database string comparisons are available, I did not 
use TO_DATE function to convert dates for later problems. Thus, I made various INSERT INTO examples to check if my query operates properly. 
For some specific constraints applied on entities such as test result have to be either positive or negative or symptom_id ranging between 1 and 5. 
I used logical expressions or IN function to apply these constraints. 

part 2) To find the most-self-reported-symptom between 1 and 5, I counted all the repeated symptom_id to find the frequency of its occurance. 
Then grouped it with symptom_id and listed frequency by descending order to crop just the top first row since descending order will sort/place 
the most occured symptom on the very top row. Thus I used fetch function to crop just the first row. I have used my part 1 examples to test. 

part 3) To write query to output the sickest floor, assusming that we want our query to output the floor number with most sick/hospitalized 
employees are located at. Thus there are 0-10 floors in this company. I used meeting table to get the floor number, which is associated with each 
employee. Thus I counted all the sick counts, counting if patient status is either sick or hospitalized. Then I created total sick count variable 
to account for the sum of counted sick counts. Then I used two variables (sickcounts, totalsickcounts) cross join it to find the maximum. 

part 4) To find total number of scan, test, employees with symptoms, and positve cases. I used seperate select queries to create seperate columns 
and created condition to count only if the range is between 2023/1/1 to 2023/12/31. As mentioned in part 1, I have used strings for dates 
instead of using TO_DATE/DATE function as database allows string comparisons, it is able to check if they fit within the range or not. 
Thus for counting total number of positive cases, I created two conditions where one is date being within the range and test_result = positive. 

part 5) For creating my own query, I wanted to use division to find percentages of report being positive depending on tested places. 
I created function to find its percentages, the logic follows: if test result is positve then we count and find total count/100 and store the percentages 
for specific locations. For my examples, it gave that employees who tested at hospital came out around 33.3333%, company, and clinic being 100%. 


