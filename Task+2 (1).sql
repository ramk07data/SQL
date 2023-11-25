#Task 2#
#a How many female passengers traveled a minimum distance of 600KMs ?
select count(distance) as 'Female passengers' from passenger where gender = 'F' and distance >=600 ;

#b Write a query to display the passenger details whose travel distance is greater than 500 and who are traveling in a sleeper bus.
select passenger_name,distance from passenger where distance > 500 and bus_type = 'sleeper';

#c Select passenger names whose names start with the character 'S'.
select passenger_name as 'name starts with s'from passenger where passenger_name like 'S%';

#d Calculate the price charged for each passenger, displaying the Passengername, BoardingCity, DestinationCity, Bustype, and Price in the output.
select p.passenger_name,p.boarding_city,p.destination_city,p.bus_type,p1.price from passenger p,price p1 where p.distance = p1.distance;
                                                                                              #p belongs to passenger table
																							   #p1 belongs to price table

#e What are the passenger name(s) and the ticket price for those who traveled 1000 KMs Sitting in a bus?

SELECT p.passenger_name,p1.price from passenger p,price p1 where p.distance > 1000 and p.bus_type = 'Sitting';
#No passengers in table those who traveled 1000 KMs Sitting in a bus

#f  What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to Panaji ?  
select * from passenger where passenger_name = 'Pallavi';
select bus_type as 'if palavi goes in'  ,price as 'for pallavi' from price where distance = (select distance from passenger where passenger_name = 'Pallavi');
	                              #price details can be retrived                #using the row pallavi to get distance
                                 
#g Alter the column category with the value "Non-AC" where the Bus_Type is sleeper. 
SET SQL_SAFE_UPDATES=0; #mode changed because sql in safe mode (rectified from error msg)
update passenger set category = 'NON-AC' where bus_type = 'Sleeper';
Select*from passenger;

#h Delete an entry from the table where the passenger name is Piyush and commit this change in the database.
delete from passenger where passenger_name = 'Piyush';

#i Truncate the table passenger and comment on the number of rows in the table.

truncate table passenger;
select * from passenger;  #to check table is cleared 

#j Delete the table passenger from the database.

drop table passenger;

