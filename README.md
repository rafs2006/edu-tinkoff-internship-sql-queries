# edu-tinkoff-internship-sql-queries
Here you can find my take on queries for "Tinkoff.Education" SQL exam

There are 3 tables provided

![2021-10-23_18-39-49 translated](https://user-images.githubusercontent.com/75316836/138552888-d38ac51a-328e-468f-8914-6b6455f53b68.jpg)

Tasks
1. Write a query that will display pilots who, as a second pilot flew to Sheremetyevo Airport in August of this year.
2. Display pilots over the age of 45 who have done more than 30 cargo flights.
3. Output the TOP 10 captains (first_pilot_id) who transported the largest number of passengers this year.

So first I had to create 3 tables 'pilots', 'planes', 'flights' in PostgreSQL. Database enclosed.

#Need to fill it with more random 'flight' and 'plane' sample data.

#You can't assign two Primary Keys in one table (like it's shown in Table 2 in the task)

I enclose the queries that worked fine and displayed the required data. E.g.
![2021-10-23_18-57-11](https://user-images.githubusercontent.com/75316836/138553360-82da693f-9254-40b9-991d-ab8362119095.png)

#Reports attached to the repo.

#The second query report will give the expected output, when there will be more sample data added to the 'flights' and 'pilots' dataframe.
