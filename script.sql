Select *
From data_analyst_jobs;
--Question 1:Count= 1793

Select * 
from data_analyst_jobs
Limit 10
--Question 2: XTO Land Data Analyst

Select COUNT(location)
from data_analyst_jobs
Where location = 'TN' 
OR location = 'KY'
--Question 3: TN=21 mentions, TN&KY= 27

Select count(location)
From data_analyst_jobs
Where location= 'TN'
AND star_rating > 4
--Question 4 : 3 

Select count(review_count)
From data_analyst_jobs
Where review_count Between 500 AND 1000
--Question 5: 151

Select location, Avg(star_rating) AS avg_rating
from data_analyst_jobs
Group By location
--Question 6: KS

Select distinct title
From data_analyst_jobs
--Question 7: 881

Select distinct title
From data_analyst_jobs
Where location = 'CA'
-- Question 8: 230

Select company, AVG(star_rating)
From data_analyst_jobs
Where review_count > 5000
Group By company
--Question 9: 40

Select company, AVG(star_rating) AS avg_rating
From data_analyst_jobs
Where review_count > 5000
Group By company
--Question 10: General Motors at 4.1999998090000000

Select count(title)
From data_analyst_jobs
Where title Like '%Analyst%'
--Question 11: 1636


Select count(title)
From data_analyst_jobs
Where title NOT LIKE '%Analytics%'
AND title NOT LIKE '%Analyst%'
AND title NOT LIKE '%ANALYST%'
AND title NOT LIKE '%analyst%'
--Question 12: 6

Select *
From data_analyst_jobs
Where days_since_posting >21
AND skill ='SQL'
Group By days