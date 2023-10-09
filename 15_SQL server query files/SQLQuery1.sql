/* THIS SQL-PROJECT WAS PERFORMED IN MICROSOFT SQL SERVER MANAGEMENT STUDIO.  
   THE FIRST STEP WAS TO IMPORT THE RAW DATA FILES AS TABLES INTO A DATABASE.
   AFTER IMPORTING "MENTAL_HEALTH", "NUMBER_OF_INTERNET_USERS" AND 
   "POPULATION_GERMANY"; THE FOLLOWING STATEMENTS LED TO THE FINAL SELECTION
   RESULT.
*/

-- Check the german depression data
select Entity, Year, [ DALYs_from_depressive_disorders_per_100K_people]
from SQL_Projekte..mental_health
where entity = 'Germany'

-- Check the german internet user data
select Entity, Year, Number_of_Internet_users from SQL_Projekte..number_of_internet_users
where Entity = 'Germany' and
      Year <= '2019'

-- Check the german population data
select Entity, Year, [Population] from SQL_Projekte..Population_Germany
where entity = 'Germany' and
      Year <= '2019'

/* 
Join the data from mental_health, internet_user_data and Population_Germany into
one table with 6 columns. The last column "Depressions_total" is a calculation
result. Until now, the cases of depression were only available per 100K people. With the help
the annual population figures for Germany, it is possible to convert the figures to exact
absolute depression figures.
*/
SELECT
    t1.Entity,
    t1.Year,
    t1.Number_of_Internet_users AS Number_of_internet_users,
    t2.[ DALYs_from_depressive_disorders_per_100K_people] AS Number_of_Depressions_per_100K,
	t3.Population,
	CAST((t3.Population / 100000 * t2.[ DALYs_from_depressive_disorders_per_100K_people]) AS int) AS Depressions_total
FROM
    SQL_Projekte..number_of_internet_users t1
JOIN
    SQL_Projekte..mental_health t2
ON
    t1.Entity = t2.Entity
    AND t1.Year = t2.Year
JOIN
    SQL_Projekte..Population_Germany t3
ON
    t1.Entity = t3.Entity
    AND t1.Year = t3.Year
	where t1.entity = 'Germany';

/* 
I saved the selection result as internet_users_combined_with_depressions_Germany.CSV and
internet_users_combined_with_depressions_Germany.xlsx for the later visualization 
*/