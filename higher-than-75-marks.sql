/*
Enter your query here.
*/
SELECT Name
FROM STUDENTS
WHERE Marks > 75
ORDER BY SUBSTR(Name,LENGTH(Name) - 2,3), ID;