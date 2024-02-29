SELECT * FROM cars.car_dekho;
use cars;
#--read data--
select * from car_dekho;
 -- Total Cars to get a counts of records---
 select count(*) from car_dekho;            # 7927 Total Records
 
  -- The Manager asked the employee how many cars will be available in 2023?-----
  select count(*) from car_dekho where year=2023;       # 6 Car available
  
   -- The Manager asked the employee how many cars will be available in 2020,2021,2022 ?-----
select count(*) from car_dekho where year=2020;        # 74 Cars available
select count(*) from car_dekho where year=2021;        # 7 Cars available
select count(*) from car_dekho where year=2022;        # 7 Cars available

 #--Group by ---------    2nd Method 
 select count(*) from car_dekho where year in (2020,2021,2022) group by year;
  select count(*) as Total, year from car_dekho where year in (2020,2021,2022) group by year;
  select year,count(*) as Total from car_dekho where year in (2020,2021,2022) group by year;
  
 -- client asked me to print the total of all cars by year.I don't see all the details-----
 select Year,count(*) as Total from car_dekho group by year;
 
 -- client asked to car dealer agent how many diesel cars will there be in 2020 ?---
select year,count(*) as Total from car_dekho where year = 2020 and fuel="diesel";
select year,count(*) as Total from car_dekho where year = 2021 and fuel="diesel";
select year,count(*) as Total from car_dekho where year = 2023 and fuel="diesel";

-- -- client asked to car dealer agent how many Petrol cars will there be in 2020 ?---
select year,count(*) as Total from car_dekho where year = 2020 and fuel="Petrol";
select year,count(*) as Total from car_dekho where year = 2023 and fuel="Petrol";

-- -- client asked to car dealer agent how many CNG cars will there be in 2020 ?---
select year,count(*) as Total from car_dekho where year = 2020 and fuel="CNG";
select year,count(*) as Total from car_dekho where year = 2022 and fuel="CNG";

-- The manager told the employee to give a print all the Fuel cars (petrol,diesel and CNG) come by all Year-----
select year ,count(*) as Total from car_dekho where fuel = "Petrol" group by year;
select year ,count(*) as Total from car_dekho where fuel = "Diesel" group by year;
select year ,count(*) as Total from car_dekho where fuel = "CNG" group by year;

-- Manager said there where more than 100 cars in a given year ,which year had more than 100 cars ?---
select year,count(*) as Total from car_dekho group by year having count(*)>100;
select year,count(*) as Total from car_dekho group by year having count(*)<100;
select year,count(*) as Total from car_dekho group by year having year>100;

-- The Manager said to the employee All cars count details between 2015 and 2023; we need a complete list------
select count(*) from car_dekho where year between 2015 and 2023;

--  The Manager said to the employee All cars details between 2015 and 2023;
select * from car_dekho where year between 2015 and 2023;






