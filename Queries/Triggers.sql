//Insert through complex view

//1.Counter with Station
Create or Replace View CounterWithStation
as
(select s.station_id,c.counter_id,manager_name
from Stations s
join Has_counter hc on s.station_id=hc.station_id
join Counter c on hc.counter_id=c.counter_id)


//TRRIGGER
CREATE OR REPLACE TRIGGER CounterWithStationTrigger
INSTEAD OF INSERT ON CounterWithStation
FOR EACH ROW
BEGIN                
   INSERT INTO counter(counter_id, manager_name) VALUES (:NEW.counter_id, :NEW.manager_name);
   INSERT INTO has_counter(station_id, counter_id) VALUES (:NEW.station_id, :NEW.counter_id);
END;

//insert
INSERT INTO CounterWithStation (STATION_ID, COUNTER_ID, MANAGER_NAME) 
VALUES ('S002', 'CT00000032', 'Night King'); 


//Staff alumni trigger 

CREATE OR REPLACE TRIGGER ex_staff
AFTER UPDATE OF Status
ON Staff
FOR EACH ROW
WHEN (new.Status='retired')
BEGIN
INSERT INTO Staff_alumni VALUES (:old.Staff_id,:old.DOB,:old.first_name,:old.Last_name,:old.Shift,:old.Worker_type,:old.Address_house_number,:old.Address_road_number,:old.Address_block,:old.Address_city);
DELETE FROM Staff where staff_id=:old.staff_id;
END;

//v2.0
Create or Replace TRIGGER insertUser
after UPDATE OF status
ON signup
FOR EACH ROW
when (new.status='granted')
BEGIN
insert into users values (:new.user_id,:new.first_name,:new.last_name,:new.user_pwd,:new.contact_number,:new.user_email,:new.occupation,:new.house_number,:new.road_number,:new.block,:new.city) ;
END ;

//update signup(updated)
Create or Replace TRIGGER update_signup
after update of status
ON permission
FOR EACH ROW
BEGIN
update signup
set status = :new.status
where signup.user_id = :new.user_id ; 
END ;

//insert_permission
Create or Replace TRIGGER insert_permission
after insert
ON signup
FOR EACH ROW
BEGIN
insert into permission values (:new.user_id,'pending') ; 
END ;

//insert on insert_user_login //done
Create or Replace TRIGGER insert_user_login
after insert
ON users
FOR EACH ROW
BEGIN
insert into user_login values (:new.user_email,:new.user_pwd) ; 
END ;

//insert into metrocard;
Create or Replace TRIGGER update_metrocard
after update
ON metrocard_user
FOR EACH ROW
BEGIN
update permission
set status = 'granted'
where permission.user_id = :new.user_id ;
END ;


Create or Replace TRIGGER insert2_user_login
after insert
ON staff
FOR EACH ROW
BEGIN
insert into user_login values (:new.user_email,:new.user_pwd) ; 
END ;

//new
Create or Replace TRIGGER insert_log_book
after update
ON repair
FOR EACH ROW
when(new.status='done')
BEGIN
insert into repair_log_book values (:old.train_id,:old.component_id,:old.repair_parts,:old.description,:old.send_to_repair,:old.repaired_date) ;
END ;

//complaint trigger
Create or Replace TRIGGER complaint_log_book
after update
ON Complaint_management
FOR EACH ROW
when(new.status='Checked')
BEGIN
insert into Complaint_logbook values (:old.complaint_id,:old.reply_msg,:old.reply_time) ;
END ;
