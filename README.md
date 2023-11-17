# SQL project - internet users vs. depressions       

## Objective of the project

My goal.. was to find out if there is a visible correlation between the increase in the number of Internet users and the registered number of depression in Germany, since Internet use has increased significantly among the general population. My hypothesis was, 
that there could be a comparable increase in both time series.

## Conclusion

After the project, I conclude that there is no direct, visible correlation between the increase in the number of Internet users and the registered number of depressions in Germany. The curve for Internet use has risen sharply since 1990, but the curve for depression has not. It has remained at a constant level. The calculated percentages show a big difference between the total increases and also for the annual growth rates.
With the help of this evaluation, however, it cannot be clearly ruled out that there is a correlation between Internet use and the occurrence of depression. However, the data used here are obviously not sufficient for a clear evaluation.

   >**Percentage increase in internet users from 1990 to 2019 in Germany:**                   73,240.15%    
   >**Percentage increase in registered cases of depression from 1990 to 2019 in Germany:**       12.24%     
   >
   >**Compound Annual Growth Rate (CAGR)_*_ of internet users from 1990 to 2019 in Germany:**                        25.55%      
   >**Compound Annual Growth Rate (CAGR)_*_ of registered cases of depression from 1990 to 2019 in Germany:**          0.4%

**CAGR = (n√Final value / Initial value – 1) * 100*

## Data sources:

mental_health.csv (source: [Our World in Data - Mental Health Data](https://ourworldindata.org/mental-health)) <br>
number-of-internet-users.csv (source: [Our World in Data - Internet statistics](https://ourworldindata.org/internet)) <br>
Population_Germany.xlsx (source: [Statista - demographic data](https://de.statista.com/statistik/daten/studie/2861/umfrage/entwicklung-der-gesamtbevoelkerung-deutschlands/))

## My approach

In the first step, I imported the above data as tables into a database to Microsoft SQL Server Management Studio. Based on the available data, I chose the period 1990 to 2019 
and limited my analysis to Germany. For the depression values, I additionally had to perform a conversion. I had the depression count only as a proportion of 100,000 persons. 
However, for better presentability, I wanted to present the absolute values based on the German population. To maintain accuracy, I took into account the population change from 1990 to 2019. 

With one join in my SQL-Query, I was able to create the following table with all necessary information:

![image](https://github.com/ingmarkroll79/SQL_project_internet_vs_depression/assets/146067161/0d800155-0816-4af1-a51d-fefe082171de)      

![SQL_internet vs  depression_selection screenshot](https://github.com/ingmarkroll79/SQL_project_internet_vs_depression/assets/146067161/fe8de0d8-ad1c-4889-98d7-ecb653e75395)

## Visualization in Tableau

[Go to chart in Tableau](https://public.tableau.com/views/Internetusersvs_depressionsinGermany1990-2019-areachart/Blatt2?:language=de-DE&:display_count=n&:origin=viz_share_link)
![image](https://github.com/ingmarkroll79/SQL_project_internet_vs_depression/assets/146067161/aed7d1b0-afb2-4d5d-a170-61e303174a87)

## Used tools:

Microsoft SQL Server Management Studio    
Microsoft Excel    
Tableau Public    
GitHub (with GitHub Desktop)    


   
