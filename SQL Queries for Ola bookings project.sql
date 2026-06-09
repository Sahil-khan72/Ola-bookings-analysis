select * from Ola.bookings limit 100;
-- 1.  retrieve all the successfull bookings.
select * from Ola.bookings
where Booking_status = "Success";


-- 2. Find the average ride distance for each vehicle.
select Vehicle_Type, avg(Ride_Distance) as Avg_Distance 
from Ola.bookings
group by Vehicle_Type;


-- 3. Get the total number of cancelled rides by customers.
select  count(*)
from Ola.bookings 
where Booking_Status = "Canceled by Customer";


-- 4. List the top 5 customers who booked the highest number of rides.
create view Top_5_Customers as
select Customer_ID, count(Booking_ID) as Total_Rides
from Ola.bookings
group by Customer_ID
order by Total_Rides desc limit 5;

select * from Top_5_Customers;

-- 5. Get the number of rides canceled by driver due to personal and car related issues.
create view Rides_Canceled_by_Driver_P_C_issue as
select count(*) as Canceled_by_driver_P_C_issue
from Ola.bookings 
where Canceled_Rides_by_Driver = "Personal & Car related issue";

select * from Rides_Canceled_by_Driver_P_C_issues;

-- 6. select maximum and minimum driver rating for prime sedan bookings.
create view Max_Min_Driver_Rating as 
select max(Driver_Ratings) as Max_Rating, min(Driver_Ratings) as Min_rating
from Ola.bookings
where Vehicle_Type ="Prime Sedan";

select * from Max_Min_Driver_Rating;
 
 -- 7. retrieve all rides where payment was made using UPI.
 create view UPI_payment as
 select * from Ola.bookings where Payment_Method = 'UPI';
 
 select * from UPI_payment;
 
 # 8. Find the average customer rating per vehicle type.
 create view average_ratings_by_vehicle_type as
 select Vehicle_Type, round(avg(Customer_Rating),2) as Average_Ratings
 from Ola.bookings
 group by Vehicle_Type;
 
 select * from average_ratings_by_vehicle_type;
 
 # Calculate the total booking value of rides completed successfully
 create view total_booking_value as
 select sum(Booking_Value) as total_successfull_value
 from Ola.bookings
 where Booking_Status = "Success";
 
  select * from total_booking_value;
  
 # List all incomplete rides along with the reason.
 create view Incomplete_Rides_Reason as
 select Booking_ID, Incomplete_Rides_Reason
 from Ola.bookings
 where Incomplete_Rides = "Yes";
 
 select * from Incomplete_Rides_Reason;
 
 
 
 
 