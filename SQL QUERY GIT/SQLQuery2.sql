/****** Script for SelectTopNRows command from SSMS  ******/

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


 


 /*ENSURING A VERY UNBAISED DATASET AND AN ACCURATE DATASET, ALL NULL VALUES NEED TO BE REMOVED FROM THE rides_all_2022 dataset,AND WE NEED TO WORK WITH DATASET THAT HAS RIDE_LENGTH ABOVE 1MINUTE AND JUST FOR A DAY*/


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

/*CALCULATING AVERAGE DAILY RIDE LENGTH AND USING VIEW TO SAVE DATA*/

CREATE view avg_rides AS
SELECT member_casual AS member_type, AVG(ride_length) as avg_rides
FROM dbo.rides_all_2022
GROUP BY member_casual

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

CREATE VIEW Hot_zone_list AS
Select
TOP 20 start_station_name AS Station_name,
Count(case when member_casual = 'casual' then 1 else NULL END) AS num_of_casual
From dbo.rides_all_2022
Group By start_station_name
ORDER BY num_of_casual DESC


/*what type of bikes do the casual bikers prefer?.Does the ride type influence casual riders choices?*/
Select
TOP 20 rideable_type AS ride_type,
Count(case when member_casual = 'casual' then 1 else NULL END) AS num_of_casual
From dbo.rides_all_2022
Group By rideable_type
Order By num_of_casual DESC

Select
TOP 3 rideable_type AS ride_type,
Count(case when member_casual = 'member' then 1 else NULL END) AS num_of_member
From dbo.rides_all_2022
Group By rideable_type
Order By num_of_member DESC
