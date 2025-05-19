SELECT country,count(*),avg(age) FROM students
GROUP BY country;
SELECT country,avg(age) FROM students
GROUP BY country
HAVING avg(age) >22;

--- count student Born in Each Year
SELECT extract(year from dob) as birth_year, count(*)
from students
GROUP BY birth_year;