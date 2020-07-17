//1.need repair and being repair (Abrar-33)

CREATE OR REPLACE FORCE VIEW  "REPAIR_VIEW" ("TrainID", "TrainName", "ComponentId", "ComponentType", "Manufacturer", "DateofInstallation", "Status", "SenttoRepair", "Cost", "WorkerName") AS 
  SELECT REPLACE(t.TRAIN_ID,'T','Train-'), UPPER(t.TRAIN_NAME), REPLACE(tc.Component_id,'C','Component-'), INITCAP(tc.Component_type) , INITCAP(tc.Manufacturer), tc.Installation_date, LOWER(tc.Status), r.Send_to_Repair, CONCAT('Taka ',r.Cost), INITCAP(s.first_name)
FROM TRAINS t
JOIN HAS_COMPONENT hc on t.TRAIN_ID=hc.TRAIN_ID 
JOIN TRAIN_COMPONENT tc on hc.COMPONENT_ID=tc.COMPONENT_ID
JOIN REPAIR r on tc.COMPONENT_ID=r.COMPONENT_ID 
JOIN Has h on h.train_id=r.train_id
JOIN staff s on S.staff_id=h.staff_id
JOIN REPAIR_WORKERS_INVOLVE rwi on s.Staff_id=rwi.Staff_id 
WHERE tc.NEXT_CHECKUP BETWEEN to_date('10-MAY-2019','DD-MM-YYYY') AND to_date('20-MAY-2019','DD-MM-YYYY')
OR r.Status='Reparing';

//2.last one month repair cost of train (Abrar-33)

CREATE OR REPLACE VIEW REPAIR_Cost_of_lastmonth
("Train_ID", "Train_Name", "Cost")
AS 
SELECT REPLACE(t.TRAIN_ID,'T','Train-'),UPPER(t.TRAIN_NAME), SUM(r.Cost)
FROM TRAINS t
JOIN REPAIR r on t.TRAIN_ID=r.TRAIN_ID
where r.Send_to_Repair BETWEEN to_date('05-April-2019','DD-MM-YYYY') AND to_date('05-MAY-2019','DD-MM-YYYY')
group by (t.TRAIN_ID,t.TRAIN_NAME);


//3.kon Station e kon train kkhon thambe  (Abrar-33)

CREATE OR REPLACE VIEW ROUTE_VIEW 
("StationID", "StationsAddress", "TrainName", "Arrivaltime", "Departuretime", "NumberofCompartment", "NumberofSeats")
AS 
(SELECT REPLACE(s.Station_ID,'S','Station-'), INITCAP(s.Station_Address),UPPER(t.TRAIN_NAME), r.Arrival_time, r.Departure_time ,sm.Total_compartment, sm.Seat_per_compartment*sm.Total_compartment
FROM Stations s
JOIN Route_details rd on s.Station_id =rd.Station_id
JOIN Route r on rd.TRAIN_ID=r.TRAIN_ID
JOIN TRAINS t on r.TRAIN_ID=t.TRAIN_ID 
JOIN Seat_Management sm on t.TRAIN_ID=sm.TRAIN_ID);


//4.Not MetroCard User (Abrar-33)
CREATE OR REPLACE VIEW NotPermittedUser
("User_id", "Name", "Password", "Contact_number", "Contact_email", "Occupation", "Address")
AS 
(SELECT User_id, First_name||' '||Last_name, User_pwd, Contact_number, User_email, Occupation, 'House-'||House_number||', Road-'||Road_number||', Block-'||Block||', City-'||City 
FROM Users
where User_id in
((SELECT User_id FROM Users)
minus
(SELECT User_id FROM MetroCard_User)));


//5.Maximum Recharge User (Abrar-33)
CREATE OR REPLACE VIEW MaximumRechargeUser
("User ID", "Recharge Amount")
AS 
(SELECT mu.User_id,SUM(r.Recharge_Amount)
FROM MetroCard_user mu
JOIN Recharge_details rd on mu.User_id=rd.User_id
JOIN Recharge r on rd.Recharge_id=r.Recharge_id 
group by mu.User_id
having SUM(r.Recharge_Amount)=(SELECT MAX(SUM(Recharge_Amount)) 
FROM MetroCard_user mu
JOIN Recharge_details rd on mu.User_id=rd.User_id
JOIN Recharge r on rd.Recharge_id=r.Recharge_id 
group by mu.User_id));


//6.Salary of staffs with their supervisor info (Abrar-33)
CREATE OR REPLACE VIEW SalaryofStuff
("Staff_id", "Staff_name", "Recharge_amount", "Supervisor_id", "Supervisor_name")
AS
(SELECT REPLACE(s1.Staff_id,'S','Staff-'),INITCAP(s1.first_name||' '||s1.Last_name), CONCAT('Taka ',sal.base+sal.bonus),REPLACE(s2.Staff_id,'S','Supervisor-'), INITCAP(s2.first_name||' '||s2.Last_name)
FROM Staff s1
join Staff s2 on s2.Staff_id=s1.Supervisor_id
JOIN Gets_Salary g on s1.Staff_id=g.Staff_id
JOIN Salary Sal on g.Trans_id=Sal.trans_id);

//7.Showing which seats are available on a train at a specific time (Akib-15)

Create or Replace View available_seats("Available_Seats")
AS
(
Select Distinct Seat_position
From Seats,Seat Join Trains Using(Train_id)
Where Seat_position NOT IN (Select Seat_num From Seats,Seat Join Trains Using(Train_id)
Where Train_name='Metro Rail 1' AND Seat_position != Seat_num)
);

Select listagg("Available Seats",'  |  ') within group (order by "Available Seats") AS "Available Seats"
From available_seats;


//8.Complex View (Showing Train Manufacture details which component is repairing or Damaged in this year) (Akib-15)

Create or Replace View Manufacture_view("Train_id","Train_name","Company","Imported_from",
"Component_name","Manufacturer_name","Manufacture_date","Next_checkup_date","Component_cost","Component_status")
AS
(
Select REPLACE(Trains.Train_id,'T','Train-'),UPPER(Train_name),UPPER(Company_name),UPPER(Imported_from),
INITCAP(Repair_parts),INITCAP(Manufacturer),to_char(Manufacture_date,'DD-MON-YYYY'),to_char(ADD_Months(Manufacture_date,16),'DD-MON-YYYY'),
CONCAT('USD ',Floor(Train_component.cost/80)),UPPER(Train_component.status)
From Repair Join Train_component On Repair.Train_id=Train_component.Train_id AND Repair.Component_id=Train_component.Component_id
Join Trains On Train_component.Train_id=Trains.Train_id
Join Train_manufacture On Trains.Train_id=Train_manufacture.Train_id
Where (Train_component.status LIKE('%Reparing%') OR
Train_component.status LIKE('%Damaged%'))
AND Manufacture_date Between to_date('01-01-2019','DD-MM-YYYY') AND to_date('31-12-2019','DD-MM-YYYY')
)
With Read Only Constraint Manufacture_view_read_only;

//9.Simple View Showing time needed until the component goes for repairation since manufacturer (Akib-15)

Create or Replace View Manufacture_to_repair_time("Train_id","Train_name","Component_id","Component_name","Time","Component_price","Repaired_cost")
AS
(
Select REPLACE(Train_component.Train_id,'T','Train-'),UPPER(Train_name),INITCAP(Train_component.Component_id),INITCAP(Repair_parts),
RPAD(CONCAT('Damaged in: ',ROUND(Months_between(Repaired_date,Manufacture_date),0)),21,' Months'),
LPAD(ROUND((Train_component.Cost/80),2),8,'USD '),RPAD(Repair.cost,11,' Taka')
From Repair Join Train_component On Repair.Component_id=Train_component.Component_id
Join Trains On Trains.Train_id=Train_component.Train_id
);

//10. Showing Chat Details of staffs (Rahul-49)

create or replace view chat_view
(from_user_id,sender_fname,sender_lname,to_user_id,to_fname,to_lname,chat_id,message,chat_time)
as 
select f.from_staff_id,s.first_name,s.last_name,f.to_staff_id,s.first_name,s.last_name,f.chat_id,f.message,f.chat_time
from staff_chatbox f,staff s
where s.staff_id = f.from_staff_id ;

//11. Showing Complaints which are unchecked //OK (Sakib-62)

CREATE OR REPLACE VIEW complaint_view
("Complaint_ID","User_Name","User_Contact_Number","User_Email","Complaint")
AS
SELECT h.complaint_id,h.first_name||' '||h.last_name,h.contact_number,h.Contact_gmail,h.complaint_msg
 from helpline h join complaint_management cm on h.complaint_id=cm.complaint_id 
where cm.status = 'Unchecked';

//12. Staff balance view //OK (Sakib-62)

CREATE OR REPLACE VIEW staff_balance_view
("Staff_Name","Supervisor_Name","Date_of_Birth","Working_Shift",
"Working_Field","Address","Total_Salary")
AS
SELECT st.first_name||' '||st.Last_name,sp.first_name||' '||st.Last_name,st.DOB,st.Shift,st.Worker_type,
'House-'||st.Address_house_number||',Road-'||st.Address_road_number||',Block-'||st.Address_block||',City-'||st.Address_city,
(Base+Bonus+(Overtime*500))
FROM Staff st JOIN Staff sp ON sp.Staff_id=st.Supervisor_id
JOIN Gets_Salary g ON st.Staff_id=g.Staff_id
JOIN Salary sa ON g.Trans_id=sa.Trans_id;



//13.Driver schedule view //OK (Sakib-62)

Create or replace view Driver_view 
("Train Name","Source Station","Destination Station","Day")
as(
select tt.Train_name,t.Source,t.Destination,t.Day
from driver d join has h on d.staff_id=h.staff_id
join Train_scheduler t on h.Train_id=t.Train_id
join Trains tt on t.Train_id=tt.Train_id);


select * from Driver_view


//14.Repair workers view //OK (Sakib-62)

create or replace view Repair_workers_view ("Staff_Name","Staff_id","component_id","Repair_Status","Repair_Parts","Repair_Cost","Send_to_Repair","Next_Checkup_Date")
as
(
select s.first_name||' '||s.Last_name,s.staff_id,r.component_id,r.status,r.Repair_parts,r.Cost,r.Send_to_repair,tc.Next_checkup
from 
Repair_workers_involve r1 join Staff s on r1.staff_id=s.staff_id 
join has h on h.staff_id=s.staff_id 
join Repair r on h.Train_id=r.Train_id
join Train_component tc on r.Component_id=tc.Component_id
); 


select * from Repair_workers_view


//15.Station master view //OK (Sakib-62)


create or replace view Station_master_view 
("Name","Station Name","Stopped Train Name","Train Arrival Time","Train Departure Time")
as
(select s.first_name||' '||s.Last_name,st.Station_address,t.Train_name,to_char(r.Arrival_time,'hh:mm'),to_char(r.Departure_time,'hh:mm')
from 
station_master sm join Staff s on sm.Staff_id=s.Staff_id
join Stations st on sm.Station_id=st.Station_id
join Route_details rd on rd.Station_id=st.Station_id
join Trains t on rd.Train_id=t.Train_id
join Route r on rd.Station_id=r.Station_id
);


select * from Station_master_view
