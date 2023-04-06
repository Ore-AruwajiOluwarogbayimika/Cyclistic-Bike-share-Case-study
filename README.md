# Cyclistic-Bike-share-Case-study Analysis
#### Author: Ore-Aruwaji Oluwarogbayimika.
#### Date: 05/04/2023.

![mff-roka-0618-1-preview-maxwidth-3000-maxheight-3000-ppi-300-quality-90-1620433208](https://user-images.githubusercontent.com/129456640/229931492-fc8ffd69-cc4f-4491-8ede-7ed171d912e0.jpg)

*NOTE: Please check out the files in the repository to find all data/tables/queries found in this explanatory file and much more.*


## Introduction
Cyclistic, a company based in Chicago provides riding services for the public. With more than 5,800 bicycles and 600+ network stations across Chicago, the company sets itself apart by also offering reclining bikes, hand tricycles and cargo bikes.
Cyclistic offers three different rideable types for its customers such as; Classic bikes, electric bikes and docked bikes.
Customers are offered two (2) different types of memberships (casual memberships or Annual memberships) based on their ride purchases. Customers who purchased single-ride or full-day passes are referred to as casual riders while customers who purchased annual memberships are referred to as 
Cyclistic annual members.

Cyclistic has concluded that annual riders are more profitable than casual riders. Hence, instead of creating a marketing campaign to  all-new customers, the company believes a strategic marketing campaign targeted at the casual rides will turn them into annual members.
Before going into full marketing campaigns, the marketing team wants to know key-differences between the casual riders and full annual members.

## Problem Statement
1. How do annual members and casual riders use Cyclistic bikes differently in 2022?


## Project Analysis
For this project, the six (6) data-analytics phases were implemented (Ask, Prepare, Process, Analyze, Share, Act).


### ASK
According to the director of marketing, the clear question to be answered at the end of this project is:
How did annual members and casual riders use Cyclistic bikes differently in 2022? 
The key differences between these 2 membership types will provide valid information on what marketing strategies will be used for the forth coming campaign.

What is the business task? Analysis of different usage patterns of casual riders and annual members with the aim of converting casual riders to annual members.

Who are the key stake holders? 
A. Director of Marketing.
B. Executive team of cyclistic.

### PREPARE
Datasets containing rides from 2020-2023 were provided by Motivate International Inc. under a license agreement and is made available on an AWS server for easy download. However, for this project, Cyclistic is more concerned about riders in 2022.
I downloaded the files (.csv) from January 2022-December 2022 and stored it locally in a folder  on my system. After core scrutiny, the data is reliable and original since it comes directly form the company.


### PROCESS
Data processing was in two phases:

1. Excel was used in the first phase to organize all data into tables and save accordingly to the folder for the second phase of analysis.
This process involved opening each month file in the year 2022 and enusring the data was well structured in a table format with headings.
Files were saved in (.xlsx) format to enable easy upload into Microsoft Sql Server Management Studio.

2. Microsoft Sql Server Management Studio was used in the second phase of analysis to ensure data is clean and ready for analysis.
First, I imported all dataset (.xlsx) into database server.
Checking and verifying all datatypes of each column in each dataset is the same to enable easy merger to create year 2022 dataset.
Below are the SQL queries.

```TSQL
/*CREATE TABLE WITH COMBINED YEARLY DATA*/

CREATE TABLE rides_all_2022
( ride_id nvarchar(255),
rideable_type nvarchar(50),
started_at datetime2,
ended_at datetime2,
start_station_name nvarchar(255),
start_station_id nvarchar(255),
end_station_name nvarchar(255),
end_station_id nvarchar (255),
start_lat float,
start_lng float,
end_lat float,
end_lng float,
member_casual nvarchar(50)) 

```
```TSQL

/*INSERT JANUARY DATA INTO COMBINED YEAR DATASET*/

INSERT INTO [PROJECT1_BIKES].[dbo].[rides_all_2022]
(ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,
end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual)

(SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,
start_lat,start_lng,end_lat,end_lng,member_casual

FROM PROJECT1_BIKES.[dbo].['JANUARY-2022$']);


/*INSERT FEBRUARY DATA INTO COMBINED YEAR DATASET*/

INSERT INTO [PROJECT1_BIKES].[dbo].[rides_all_2022]
(ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,
end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual)


(SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,
start_lat,start_lng,end_lat,end_lng,member_casual

FROM PROJECT1_BIKES.[dbo].['FEBRUARY-2022$']) 

/*INSERT MARCH DATA INTO COMBINED YEAR DATASET*/

INSERT INTO [PROJECT1_BIKES].[dbo].[rides_all_2022]
(ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,
end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual)


(SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,
start_lat,start_lng,end_lat,end_lng,member_casual

FROM PROJECT1_BIKES.[dbo].['MARCH-2022$']) 


/*INSERT APRIL DATA INTO COMBINED YEAR DATASET*/

INSERT INTO [PROJECT1_BIKES].[dbo].[rides_all_2022]
(ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,
end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual)

(SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,
start_lat,start_lng,end_lat,end_lng,member_casual

FROM PROJECT1_BIKES.[dbo].['APRIL-2022$']) 


/*INSERT MAY DATA INTO COMBINED YEAR DATASET*/

INSERT INTO [PROJECT1_BIKES].[dbo].[rides_all_2022]
(ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,
end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual)

(SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,
start_lat,start_lng,end_lat,end_lng,member_casual

FROM PROJECT1_BIKES.[dbo].['MAY-2022$']);



/*INSERT JUNE DATA INTO COMBINED YEAR DATASET*/


INSERT INTO [PROJECT1_BIKES].[dbo].[rides_all_2022]
(ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,
end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual)

(SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,
start_lat,start_lng,end_lat,end_lng,member_casual

FROM PROJECT1_BIKES.[dbo].['JUNE-2022$'])



/*INSERT JULY DATA INTO COMBINED YEAR DATASET*/

INSERT INTO [PROJECT1_BIKES].[dbo].[rides_all_2022]
(ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,
end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual)

(SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,
start_lat,start_lng,end_lat,end_lng,member_casual

FROM PROJECT1_BIKES.[dbo].['JULY-2022$'])


/*INSERT AUGUST DATA INTO COMBINED YEAR DATASET*/

INSERT INTO [PROJECT1_BIKES].[dbo].[rides_all_2022]
(ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,
end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual)

(SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,
start_lat,start_lng,end_lat,end_lng,member_casual

FROM PROJECT1_BIKES.[dbo].['AUGUST-2022$']);


/*INSERT SEPTEMBER DATA INTO COMBINED YEAR DATASET*/

INSERT INTO [PROJECT1_BIKES].[dbo].[rides_all_2022]
(ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,
end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual)

(SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,
start_lat,start_lng,end_lat,end_lng,member_casual

FROM PROJECT1_BIKES.[dbo].['SEPTEMBER-2022$'])


/*INSERT OCTOBER DATA INTO COMBINED YEAR DATASET*/

INSERT INTO [PROJECT1_BIKES].[dbo].[rides_all_2022]
(ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,
end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual)
(SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,
start_lat,start_lng,end_lat,end_lng,member_casual
FROM PROJECT1_BIKES.[dbo].['OCTOBER-2022$']) 


/*INSERT NOVEMBER DATA INTO COMBINED YEAR DATASET*/
INSERT INTO [PROJECT1_BIKES].[dbo].[rides_all_2022]
(ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,
end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual)

(SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,
start_lat,start_lng,end_lat,end_lng,member_casual
FROM PROJECT1_BIKES.[dbo].['NOVEMBER-2022$'])

/*INSERT DECEMBER DATA INTO COMBINED YEAR DATASET*/
INSERT INTO [PROJECT1_BIKES].[dbo].[rides_all_2022]
(ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,
end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual)

(SELECT ride_id,rideable_type,started_at,ended_at,start_station_name, start_station_id,end_station_name,end_station_id,
start_lat,start_lng,end_lat,end_lng,member_casual

FROM PROJECT1_BIKES.[dbo].['DECEMBER-2022$']) 

```
```TSQL

/*CROSSCHECKING THE TOTAL NUMBER OF ROWS IN THE YEARLY DATASET IS ACCURATE = 6027417*/

SELECT SUM (counts) AS total 

from (SELECT count(*) as counts
FROM [PROJECT1_BIKES].[dbo].['JANUARY-2022$'] 
UNION ALL
SELECT count(*) as counts
FROM [PROJECT1_BIKES].[dbo].['FEBRUARY-2022$'] 
UNION ALL
SELECT count(*) as counts
FROM [PROJECT1_BIKES].[dbo].['MARCH-2022$'] 
UNION ALL
SELECT count(*) as counts
FROM [PROJECT1_BIKES].[dbo].['APRIL-2022$'] 
UNION ALL
SELECT count(*) as counts
FROM [PROJECT1_BIKES].[dbo].['MAY-2022$'] 
UNION ALL
SELECT count(*)as counts
FROM [PROJECT1_BIKES].[dbo].['JUNE-2022$'] 
UNION ALL
SELECT count(*) as counts
FROM [PROJECT1_BIKES].[dbo].['July-2022$'] 
UNION ALL
SELECT count(*) as counts
FROM [PROJECT1_BIKES].[dbo].['AUGUST-2022$'] 
UNION ALL
SELECT count(*) as counts
FROM [PROJECT1_BIKES].[dbo].['SEPTEMBER-2022$'] 
UNION ALL
SELECT count(*) as counts
FROM [PROJECT1_BIKES].[dbo].['OCTOBER-2022$'] 
UNION ALL
SELECT count(*) as counts
FROM [PROJECT1_BIKES].[dbo].['NOVEMBER-2022$'] 
UNION ALL
SELECT count(*) as counts
FROM [PROJECT1_BIKES].[dbo].['DECEMBER-2022$'] ) AS counts;


/*VERIFYING THE NUMBER OF ROWS ARE THE SAME WITH THE INDIVIDUAL ROWS COMBINED TOGETHER*/

SELECT count(*) 
FROM dbo.rides_all_2022
```

## ANALYZE
Data has been prepared, cleaned and processed and now ready for analysis.
Calculations will be performed on the cleaned, consistent data and identification of trends, relationships and patterns will be performed to establish the differences between the casual rides and annual members.



```TSQL


/*DATA ANALYSIS-FIRST,ADDING NEW COLUMN TO THE COMBINED DATA; RIDELENGTH*/

ALTER TABLE [dbo].[rides_all_2022]
ADD ride_length int

UPDATE [dbo].[rides_all_2022]
SET ride_length= DATEDIFF(MINUTE,started_at,ended_at)


/*ADD DAY OF THE WEEK, MONTH AND YEAR TO COLUMNS TO AID ANALYSIS*/
ALTER TABLE [dbo].[rides_all_2022]
ADD day_of_week nvarchar (50),
month_month nvarchar (50),
year_year nvarchar (50);

UPDATE [dbo].[rides_all_2022]
SET day_of_week= DATENAME(WEEKDAY,started_at),
month_month=DATENAME(MONTH,started_at),
year_year= year(started_at)
 
 /*EXTRACTING MONTH NUMBER FROM STARTED_AT COLUMN*/
 ALTER TABLE [dbo].[rides_all_2022]
 ADD month_number int

 UPDATE [dbo].[rides_all_2022]
 SET month_number =DATEPART(MONTH,started_at)

 

 ALTER TABLE [dbo].[rides_all_2022]
 ADD Date_now  DATE 

 /*CREATE A COLUMN WITH THE DATE FORMAT OF STARTED AT ONLY*/
 UPDATE [dbo].[rides_all_2022]
 SET Date_now= CAST (started_at AS DATE) 

```
```TSQL

 /*CHECKING FOR DUPLICATES AMONG THE RIDE_ID COLUMN: HENCE, THERE IS NO NEED TO REMOVE DUPLICATES AS SOME RIDERS USE THE BIKES MORE THAN ONCE */

 SELECT  COUNT(DISTINCT(ride_id)) AS ride_main,
 COUNT (ride_id) AS main
 FROM dbo.rides_all_2022

 
 /*ENSURING THE MEMBER_CASUAL COLUMN RETURNS ONLY TWO TYPES OF MEMBERS*/
 SELECT member_casual 
 FROM dbo.rides_all_2022
 GROUP BY member_casual


 /*ENSURING THE RIDEABLE_TYPE COLUMN RETURNS THREE TYPES OF BIKES*/
 SELECT rideable_type 
 FROM dbo.rides_all_2022
 GROUP BY rideable_type

```
```TSQL


 /*ENSURING A VERY UNBAISED DATASET AND AN ACCURATE DATASET, ALL NULL VALUES NEED TO BE REMOVED FROM THE rides_all_2022 dataset, WE NEED TO WORK WITH DATASET THAT HAS RIDE_LENGTH ABOVE 1MINUTE AND JUST FOR A DAY*/


 DELETE from dbo.rides_all_2022
 where ride_id IS NULL OR
 start_station_name IS NULL OR
 end_station_name IS NULL OR
 start_station_id IS NULL OR
end_station_id IS NULL OR
start_lat IS NULL OR
start_lng IS NULL OR
end_lat IS NULL OR 
end_lng IS NULL OR 
member_casual IS NULL OR
ride_length=0 OR 
ride_length < 0 OR
ride_length >1440
```

### SHARE
![Screenshot (235)](https://user-images.githubusercontent.com/129456640/229947203-4c83bf2f-008d-4181-825a-8b797f77ed9b.png)


This phase contains insights and findings through effective visualizations using Power BI as a visualization tool.

***A. Visualizing the daily rides comparison between Casual and Annual members***;

SQL QUERY:
```TSQL

select COUNT( * )FROM  dbo.rides_all_2022

/*DATASET ANALYSIS FOR TABLEAU VISUALIZATION; CALCULATING DAILY RIDES AND USING VIEW TO SAVE DATA*/

CREATE view user_daily AS
SELECT 
COUNT (CASE WHEN member_casual='member' THEN 1 ELSE NULL END)AS num_of_members,
COUNT (CASE WHEN member_casual='casual' THEN 1 ELSE NULL END)AS num_of_casuals,
COUNT(*) AS num_users,
day_of_week 
FROM dbo.rides_all_2022
GROUP BY day_of_week
```


***VISUALIZATION***

![Screenshot (231)](https://user-images.githubusercontent.com/129456640/229947080-67de6620-b644-414c-8f45-7173a39ba0fd.png)




***B. Visualizing the average daily ride length by Casual riders and Annual members;***

SQL QUERY
```TSQL
/*CALCULATING AVERAGE DAILY RIDE LENGTH AND USING VIEW TO SAVE DATA*/

CREATE view avg_rides AS
SELECT member_casual AS member_type, AVG(ride_length) as avg_rides
FROM dbo.rides_all_2022
GROUP BY member_casual
```


***VISUALIZATION***

![Screenshot (229)](https://user-images.githubusercontent.com/129456640/229947259-fd48a1cc-d041-4607-8eaf-b14142fe802b.png)



***C. Visualizing the daily traffic between  Casual riders and Annual members;***
SQL QUERY
```TSQL
/*CREATE TABLE FOR BOTH MEMBERS AND CASUALS ONLY*/
CREATE TABLE #member_table  
( ride_id nvarchar(255),
rideable_type nvarchar(50),
started_at datetime2,
ended_at datetime2,
start_station_name nvarchar(255),
start_station_id nvarchar(255),
end_station_name nvarchar(255),
end_station_id nvarchar (255),
day_of_week nvarchar (255), 
month_month nvarchar (255),
year_year int,
member_casual nvarchar(50)) 



INSERT INTO #member_table
(ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,day_of_week,
month_month,year_year,member_casual)

(SELECT
ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,day_of_week,
month_month,year_year,member_casual 
FROM dbo.rides_all_2022

WHERE member_casual='member')


CREATE TABLE #casual_table  
( ride_id nvarchar(255),
rideable_type nvarchar(50),
started_at datetime2,
ended_at datetime2,
start_station_name nvarchar(255),
start_station_id nvarchar(255),
end_station_name nvarchar(255),
end_station_id nvarchar (255),
day_of_week nvarchar (255), 
month_month nvarchar (255),
year_year int,
member_casual nvarchar(50)) 


INSERT INTO #casual_table
(ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,day_of_week,
month_month,year_year,member_casual)

(SELECT
ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,day_of_week,
month_month,year_year,member_casual 
FROM dbo.rides_all_2022

WHERE member_casual='casual')

SELECT * FROM #member_table
SELECT * FROM #casual_table

/*DAILY TRAFFIC CALCULATION*/

CREATE VIEW daily_traffic AS
SELECT 
COUNT(CASE WHEN member_casual='member' THEN 1 ELSE NULL END) AS member_1,
COUNT(CASE WHEN member_casual='casual' THEN 1 ELSE NULL END) AS casual_1,
Date_now,
day_of_week
FROM 
dbo.rides_all_2022
GROUP BY date_now,day_of_week
 ```
 
***VISUALIZATION***

![Screenshot (230)](https://user-images.githubusercontent.com/129456640/229947436-2e69cd68-0186-4b30-98df-c5d73bf416df.png)


 
***D. Visualizing the monthly traffic between Casual riders and Annual members;***
SQL QUERY
```TSQL
 /*MONTHLY TRAFFIC*/
 CREATE VIEW month_traffic AS
 SELECT 
 month_month, month_number, year_year,
COUNT(CASE WHEN member_casual='member' THEN 1 ELSE NULL END) AS member_1,
COUNT(CASE WHEN member_casual='casual' THEN 1 ELSE NULL END) AS casual_1,
COUNT(member_casual) AS total_users,
Date_now,
day_of_week
FROM 
dbo.rides_all_2022
GROUP BY month_month,month_number,year_year,date_now,day_of_week
```

***VISUALIZATION***

![Screenshot (233)](https://user-images.githubusercontent.com/129456640/229947472-83f3a690-8605-4e5d-8079-f6541fbdff5d.png)


***D. Visualizing the hour traffic between Casual riders and Annual members;***
SQL QUERY
```TSQL
/*HOUR TRAFFIC*/
Alter Table dbo.rides_all_2022
ADD hour_of_day int

UPDATE dbo.rides_all_2022
SET hour_of_day = DATEPART(hour, started_at)

CREATE VIEW hour_traffic AS
Select
hour_of_day AS Hour_of_day,
Count(case when member_casual = 'member' then 1 else NULL END) AS num_of_members,
Count(case when member_casual = 'casual' then 1 else NULL END) AS num_of_casual,
Count(*) AS num_users
From  dbo.rides_all_2022
Group By Hour_Of_Day
```

***VISUALIZATION***
![Screenshot (232)](https://user-images.githubusercontent.com/129456640/229947548-482b8e94-2e4c-4add-a2e1-fb2f4fea2dad.png)



***D. Visualizing the top start_station-name of Casual riders;***
SQL QUERY
```TSQL
CREATE VIEW Hot_zone_list AS
Select
TOP 20 start_station_name AS Station_name,
Count(case when member_casual = 'casual' then 1 else NULL END) AS num_of_casual
From dbo.rides_all_2022
Group By start_station_name
ORDER BY num_of_casual DESC
```
***VISUALIZATION***
![Screenshot (234)](https://user-images.githubusercontent.com/129456640/229947564-0afecd4d-5907-4f4c-ab74-a85f721c2ac4.png)

## ACT 
(INSIGHTS REVEALED):
After performing the collection, preparation, proccessing and transformation of data, it can be concluded that;
Casual riders ride bikes for a longer duration of time and they ride mostly **weekends**.
User Traffic is highest for Casual riders during the month of August. There are also some favourite start_station_names that Casual riders love to pick their rides from.

TOP 3 RECOMMENDATIONS TO MARKETING TEAM:
1. Apply more advertising posts containing annual membership prices and benefits at TOP 20 most popular stations for casual riders.
2. Strategize the marketing campaign around summer months to enable more reach to Casual riders.
3. Since casual riders ride more on weekends, a weekend promo attached to annual memberships can attract more casual riders and in turn increase the number of annual Cyclistic members.





**The provided data and analysis is sufficient to produce more indepth findings towards accomplishing the business task.**

