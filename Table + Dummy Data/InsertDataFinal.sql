Insert into Trains(Train_id,Train_name,Capacity,Status,Driver,Type,Length,Start_station,Stop_station)    Values('T0000001','Metro Rail 1',200,'Running','Rabbi Khan','A/C',200,'Uttara','Agargaon');
Insert into Trains(Train_id,Train_name,Capacity,Status,Driver,Type,Length,Start_station,Stop_station)     Values('T0000002','Metro Rail 2',180,'Running','Ruhul Amin','A/C',150,'Agargaon','Uttara');
Insert into Trains(Train_id,Train_name,Capacity,Status,Driver,Type,Length,Start_station,Stop_station)     Values('T0000003','Metro Rail 3',200,'Reparing','Monowar Hossain','NON A/C',200,'Uttara','Agargaon');
Insert into Trains(Train_id,Train_name,Capacity,Status,Driver,Type,Length,Start_station,Stop_station)     Values('T0000004','Metro Rail 4',220,'Running','Liton Khondokar','A/C',220,'Agargaon','Uttara');
Insert into Trains(Train_id,Train_name,Capacity,Status,Driver,Type,Length,Start_station,Stop_station)     Values('T0000005','Metro Rail 5',200,'Damaged','Mohon Lal','NON A/C',220,'Uttara','Agargaon');
Insert into Trains(Train_id,Train_name,Capacity,Status,Driver,Type,Length,Start_station,Stop_station)     Values('T0000006','Metro Rail 6',180,'Running','Sheikh Siraj','A/C',150,'Agargaon','Uttara');
Insert into Trains(Train_id,Train_name,Capacity,Status,Driver,Type,Length,Start_station,Stop_station)     Values('T0000007','Metro Rail 7',180,'Damaged','Samin Siraj','NON A/C',150,'Uttara','Agargaon');


Insert Into Train_scheduler(Train_id,Source,Destination,Day,Arrival_time,Departure_time)    Values('T0000001','Uttara','Agargaon','Sun-Sat',TO_TIMESTAMP('2019-04-01 10:00:00','YYYY-MM-DD HH:MI:SS'),TO_TIMESTAMP('2019-04-01 10:30:00','YYYY-MM-DD HH:MI:SS'));
Insert Into Train_scheduler(Train_id,Source,Destination,Day,Arrival_time,Departure_time)    Values('T0000002','Agargaon','Uttara','Sun-Sat',TO_TIMESTAMP('2019-04-02 12:00:00','YYYY-MM-DD HH:MI:SS'),TO_TIMESTAMP('2019-04-02 12:30:00','YYYY-MM-DD HH:MI:SS'));
Insert Into Train_scheduler(Train_id,Source,Destination,Day,Arrival_time,Departure_time)    Values('T0000003','Uttara','Agargaon','Sun-Sat',TO_TIMESTAMP('2019-04-03 04:00:00','YYYY-MM-DD HH:MI:SS'),TO_TIMESTAMP('2019-04-03 04:30:00','YYYY-MM-DD HH:MI:SS'));
Insert Into Train_scheduler(Train_id,Source,Destination,Day,Arrival_time,Departure_time)    Values('T0000004','Agargaon','Uttara','Sun-Sat',TO_TIMESTAMP('2019-04-04 01:00:00','YYYY-MM-DD HH:MI:SS'),TO_TIMESTAMP('2019-04-04 01:30:00','YYYY-MM-DD HH:MI:SS'));
Insert Into Train_scheduler(Train_id,Source,Destination,Day,Arrival_time,Departure_time)    Values('T0000005','Uttara','Agargaon','Sun-Sat',TO_TIMESTAMP('2019-04-05 11:30:00','YYYY-MM-DD HH:MI:SS'),TO_TIMESTAMP('2019-04-05 12:00:00','YYYY-MM-DD HH:MI:SS'));
Insert Into Train_scheduler(Train_id,Source,Destination,Day,Arrival_time,Departure_time)    Values('T0000006','Agargaon','Uttara','Sun-Sat',TO_TIMESTAMP('2019-04-06 01:30:00','YYYY-MM-DD HH:MI:SS'),TO_TIMESTAMP('2019-04-06 02:00:00','YYYY-MM-DD HH:MI:SS'));


Insert Into Train_manufacture(Train_id,Inauguration_date,Model_number,Company_name,Imported_from,Status)    Values('T0000001',to_date('12-12-2019','DD-MM-YYYY'),'M0000001','Bomberdian','China','OK');
Insert Into Train_manufacture(Train_id,Inauguration_date,Model_number,Company_name,Imported_from,Status)    Values('T0000002',to_date('12-12-2019','DD-MM-YYYY'),'M0000006','HITACHI','Japan','OK');
Insert Into Train_manufacture(Train_id,Inauguration_date,Model_number,Company_name,Imported_from,Status)    Values('T0000003',to_date('12-12-2019','DD-MM-YYYY'),'M0000007','Kawasaki','Japan','OK');
Insert Into Train_manufacture(Train_id,Inauguration_date,Model_number,Company_name,Imported_from,Status)    Values('T0000004',to_date('12-12-2019','DD-MM-YYYY'),'M0000003','HITACHI','Japan','OK');
Insert Into Train_manufacture(Train_id,Inauguration_date,Model_number,Company_name,Imported_from,Status)    Values('T0000005',to_date('12-12-2019','DD-MM-YYYY'),'M0000004','Bomberdian','China','OK');
Insert Into Train_manufacture(Train_id,Inauguration_date,Model_number,Company_name,Imported_from,Status)    Values('T0000006',to_date('12-12-2019','DD-MM-YYYY'),'M0000008','Kawasaki','Japan','OK');
Insert Into Train_manufacture(Train_id,Inauguration_date,Model_number,Company_name,Imported_from,Status)    Values('T0000007',to_date('12-12-2019','DD-MM-YYYY'),'M0000011','HITACHI','Japan','OK');

Insert Into Train_manufacture_gmail(Train_id,Contact_gmail)        Values('T0000001','aunghang@gmail.com');
Insert Into Train_manufacture_gmail(Train_id,Contact_gmail)        Values('T0000002','kimjoe19@gmail.com');
Insert Into Train_manufacture_gmail(Train_id,Contact_gmail)        Values('T0000003','aungkyun11@gmail.com');
Insert Into Train_manufacture_gmail(Train_id,Contact_gmail)        Values('T0000004','kimjoe19@gmail.com');
Insert Into Train_manufacture_gmail(Train_id,Contact_gmail)        Values('T0000005','aunghang@gmail.com');
Insert Into Train_manufacture_gmail(Train_id,Contact_gmail)        Values('T0000006','kimjoe19@gmail.com');


Insert Into Train_manufacture_number(Train_id,Contact_number)    Values('T0000001','+8154789219');
Insert Into Train_manufacture_number(Train_id,Contact_number)    Values('T0000002','+8154789218');
Insert Into Train_manufacture_number(Train_id,Contact_number)    Values('T0000003','+8167565587');
Insert Into Train_manufacture_number(Train_id,Contact_number)    Values('T0000004','+8135646757');
Insert Into Train_manufacture_number(Train_id,Contact_number)    Values('T0000005','+8121345467');
Insert Into Train_manufacture_number(Train_id,Contact_number)    Values('T0000006','+8154789268');


Insert Into Seat_Management(Train_id,Total_compartment,Seat_per_compartment)    Values('T0000001',10,50);
Insert Into Seat_Management(Train_id,Total_compartment,Seat_per_compartment)    Values('T0000002',9,50);
Insert Into Seat_Management(Train_id,Total_compartment,Seat_per_compartment)    Values('T0000003',8,50);
Insert Into Seat_Management(Train_id,Total_compartment,Seat_per_compartment)    Values('T0000004',7,50);
Insert Into Seat_Management(Train_id,Total_compartment,Seat_per_compartment)    Values('T0000005',9,50);
Insert Into Seat_Management(Train_id,Total_compartment,Seat_per_compartment)    Values('T0000006',10,50);



Insert Into Train_component(Train_id,Component_id,Status,Cost,Installation_date,Manufacture_date,Next_checkup,Component_type,Manufacturer)     Values('T0000001','C000000001','OK',500000,to_date('05-04-2019','DD-MM-YYYY'),to_date('02-01-2019','DD-MM-YYYY'),to_date('05-04-2020','DD-MM-YYYY'),'Engine','Aung Hang Chang');
Insert Into Train_component(Train_id,Component_id,Status,Cost,Installation_date,Manufacture_date,Next_checkup,Component_type,Manufacturer)     Values('T0000002','C000000002','Damaged',200000,to_date('07-04-2019','DD-MM-YYYY'),to_date('09-02-2019','DD-MM-YYYY'),to_date('07-04-2020','DD-MM-YYYY'),'AC','Aung Kyun');
Insert Into Train_component(Train_id,Component_id,Status,Cost,Installation_date,Manufacture_date,Next_checkup,Component_type,Manufacturer)     Values('T0000003','C000000003','OK',100000,to_date('25-07-2019','DD-MM-YYYY'),to_date('27-12-2018','DD-MM-YYYY'),to_date('22-07-2021','DD-MM-YYYY'),'Seats','Kim Joe');
Insert Into Train_component(Train_id,Component_id,Status,Cost,Installation_date,Manufacture_date,Next_checkup,Component_type,Manufacturer)     Values('T0000004','C000000004','Reparing  ',200000,to_date('17-09-2019','DD-MM-YYYY'),to_date('12-12-2018','DD-MM-YYYY'),to_date('22-07-2020','DD-MM-YYYY'),'Compartments','Kim Joe');
Insert Into Train_component(Train_id,Component_id,Status,Cost,Installation_date,Manufacture_date,Next_checkup,Component_type,Manufacturer)     Values('T0000005','C000000005',' Reparing ',100000,to_date('17-04-2019','DD-MM-YYYY'),to_date('12-05-2018','DD-MM-YYYY'),to_date('22-07-2020','DD-MM-YYYY'),'Electricals','kong Gaw');
Insert Into Train_component(Train_id,Component_id,Status,Cost,Installation_date,Manufacture_date,Next_checkup,Component_type,Manufacturer)     Values('T0000006','C000000006','OK',500000,to_date('29-01-2019','DD-MM-YYYY'),to_date('03-05-2019','DD-MM-YYYY'),to_date('23-11-2021','DD-MM-YYYY'),'Wheels','Aung Kyun');
Insert Into Train_component(Train_id,Component_id,Status,Cost,Installation_date,Manufacture_date,Next_checkup,Component_type,Manufacturer)     Values('T0000007','C000000007','  Damaged ',500000,to_date('29-01-2019','DD-MM-YYYY'),to_date('03-05-2019','DD-MM-YYYY'),to_date('23-11-2021','DD-MM-YYYY'),'Windows','Kim Joe');



Insert Into Staff(Staff_id,User_email,User_pwd,Supervisor_id,DOB,Status,First_name,Last_name,Shift,Worker_type,Address_house_number,Address_road_number,Address_block,Address_city)  Values('S0000001','staff1@gmail.com','1234','S0000001',to_date('22-04-1988','DD-MM-YYYY'),'Working','Bokkor','Siddique','Day','Station Master','533','01','E','Dhaka');
Insert Into Staff(Staff_id,User_email,User_pwd,Supervisor_id,DOB,Status,First_name,Last_name,Shift,Worker_type,Address_house_number,Address_road_number,Address_block,Address_city)  Values('S0000002','staff2@gmail.com','1234','S0000004',to_date('23-05-1982','DD-MM-YYYY'),'Working','Faruk','Bhuiyan','Night','Repair Workers','344','02','F','Dhaka');
Insert Into Staff(Staff_id,User_email,User_pwd,Supervisor_id,DOB,Status,First_name,Last_name,Shift,Worker_type,Address_house_number,Address_road_number,Address_block,Address_city)  Values('S0000003','staff3@gmail.com','1234','S0000001',to_date('27-06-1989','DD-MM-YYYY'),'Retired','Rahima','Mia','Night','Driver','22','03','G','Dhaka');
Insert Into Staff(Staff_id,User_email,User_pwd,Supervisor_id,DOB,Status,First_name,Last_name,Shift,Worker_type,Address_house_number,Address_road_number,Address_block,Address_city)  Values('S0000004','staff4@gmail.com','1234','S0000001',to_date('14-07-1978','DD-MM-YYYY'),'Working','Kamal','Hossain','Day','Station Master','89','04','H','Dhaka');
Insert Into Staff(Staff_id,User_email,User_pwd,Supervisor_id,DOB,Status,First_name,Last_name,Shift,Worker_type,Address_house_number,Address_road_number,Address_block,Address_city)  Values('S0000005','staff5@gmail.com','1234','S0000004',to_date('03-08-1992','DD-MM-YYYY'),'Retired','Rakib','Ahsan','Day','Station Master','1342','05','I','Dhaka');
Insert Into Staff(Staff_id,User_email,User_pwd,Supervisor_id,DOB,Status,First_name,Last_name,Shift,Worker_type,Address_house_number,Address_road_number,Address_block,Address_city)  Values('S0000009','staff6@gmail.com','1234','S0000004',to_date('03-09-1992','DD-MM-YYYY'),'Working','Aakib','Ahsania','Day','Driver','1342','10','I','Dhaka');
Insert Into Staff(Staff_id,User_email,User_pwd,Supervisor_id,DOB,Status,First_name,Last_name,Shift,Worker_type,Address_house_number,Address_road_number,Address_block,Address_city)  Values('S0000011','staff7@gmail.com','1234','S0000004',to_date('03-10-1992','DD-MM-YYYY'),'Working','Rokib','Ahmed','Day','Driver','1342','08','I','Comilla');
Insert Into Staff(Staff_id,User_email,User_pwd,Supervisor_id,DOB,Status,First_name,Last_name,Shift,Worker_type,Address_house_number,Address_road_number,Address_block,Address_city)  Values('S0000013','staff8@gmail.com','1234','S0000004',to_date('15-05-1982','DD-MM-YYYY'),'Working','Aakib','Bhuiyan','Night','Repair Workers','344','02','F','Kustia');
Insert Into Staff(Staff_id,User_email,User_pwd,Supervisor_id,DOB,Status,First_name,Last_name,Shift,Worker_type,Address_house_number,Address_road_number,Address_block,Address_city)  Values('S0000015','staff9@gmail.com','1234','S0000004',to_date('25-05-1982','DD-MM-YYYY'),'Working','Saad','Bhuiyan','Night','Repair Workers','344','02','F','Chandpur');




Insert Into Repair(Train_id,Component_id,Cost,Status,Repair_parts,Description,Send_to_repair,Repaired_date)    Values('T0000004','C000000004',500000,'Repared','Engine','Replaced',to_date('10-03-2020','DD-MM-YYYY'),to_date('22-03-2020','DD-MM-YYYY'));
Insert Into Repair(Train_id,Component_id,Cost,Status,Repair_parts,Description,Send_to_repair,Repaired_date)    Values('T0000005','C000000005',30000,'Reparing','A/C Condenser','Needs to be replaced',to_date('01-01-2020','DD-MM-YYYY'),to_date('11-01-2020','DD-MM-YYYY'));
Insert Into Repair(Train_id,Component_id,Cost,Status,Repair_parts,Description,Send_to_repair,Repaired_date)    Values('T0000002','C000000002',30000,'Reparing','Compartment Gate','Automatic gate lock not working',to_date('06-07-2020','DD-MM-YYYY'),to_date('18-07-2020','DD-MM-YYYY'));
Insert Into Repair(Train_id,Component_id,Cost,Status,Repair_parts,Description,Send_to_repair,Repaired_date)    Values('T0000007','C000000007',30000,'Reparing','Engine','Engine needs to be repeced',to_date('03-03-2020','DD-MM-YYYY'),to_date('11-12-2020','DD-MM-YYYY'));


Insert Into Repair_workers_involve(staff_id,Speciality,Working_area)         Values('S0000002','Mechanical','Engine');
Insert Into Repair_workers_involve(staff_id,Speciality,Working_area)         Values('S0000013','Electrical','A/C');
Insert Into Repair_workers_involve(staff_id,Speciality,Working_area)         Values('S0000015','Cse','Compartment');


Insert Into Stations(Station_id,Station_address,Lattitude,Longitude)     Values('S001','Agargaon',100,150);
Insert Into Stations(Station_id,Station_address,Lattitude,Longitude)     Values('S002','Kazipara',120,170);
Insert Into Stations(Station_id,Station_address,Lattitude,Longitude)     Values('S003','Shewrapara',140,190);
Insert Into Stations(Station_id,Station_address,Lattitude,Longitude)     Values('S004','Mirpur-10',160,210);
Insert Into Stations(Station_id,Station_address,Lattitude,Longitude)     Values('S005','Mirpur-11',180,240);
Insert Into Stations(Station_id,Station_address,Lattitude,Longitude)     Values('S006','Mirpur-12',210,265);
Insert Into Stations(Station_id,Station_address,Lattitude,Longitude)     Values('S007','Uttara',280,400);



Insert Into Route(Train_id,Station_id,Arrival_time,Departure_time)         Values('T0000001','S001','10:00','10:05');
Insert Into Route(Train_id,Station_id,Arrival_time,Departure_time)         Values('T0000001','S003','10:15','10:20');
Insert Into Route(Train_id,Station_id,Arrival_time,Departure_time)         Values('T0000001','S007','10:30','10:35');
Insert Into Route(Train_id,Station_id,Arrival_time,Departure_time)         Values('T0000002','S001','18:30','18:35');
Insert Into Route(Train_id,Station_id,Arrival_time,Departure_time)         Values('T0000002','S005','19:00','19:05');
Insert Into Route(Train_id,Station_id,Arrival_time,Departure_time)         Values('T0000002','S007','19:20','19:25');
Insert Into Route(Train_id,Station_id,Arrival_time,Departure_time)         Values('T0000003','S001','14:00','14:05');
Insert Into Route(Train_id,Station_id,Arrival_time,Departure_time)         Values('T0000003','S007','14:55','15:00');
Insert Into Route(Train_id,Station_id,Arrival_time,Departure_time)         Values('T0000004','S001','08:00','08:05');
Insert Into Route(Train_id,Station_id,Arrival_time,Departure_time)         Values('T0000004','S002','08:20','08:25');
Insert Into Route(Train_id,Station_id,Arrival_time,Departure_time)         Values('T0000004','S004','08:45','08:50');
Insert Into Route(Train_id,Station_id,Arrival_time,Departure_time)         Values('T0000006','S001','16:55','17:00');
Insert Into Route(Train_id,Station_id,Arrival_time,Departure_time)         Values('T0000006','S003','20:20','20:25');
Insert Into Route(Train_id,Station_id,Arrival_time,Departure_time)         Values('T0000006','S005','17:45','17:50');
Insert Into Route(Train_id,Station_id,Arrival_time,Departure_time)         Values('T0000006','S007','18:05','18:10');



Insert Into Signup(User_id,First_name,Last_name,User_pwd,Contact_number,User_email,Occupation,House_number,Road_number,Block,City,Request)     Values('U0000001','Abrar','Khan','1234','+01712365478','abrar@gmail.com','Student','233','06','A','Dhaka','Metrocard');
Insert Into Signup(User_id,First_name,Last_name,User_pwd,Contact_number,User_email,Occupation,House_number,Road_number,Block,City,Request)     Values('U0000002','Sakib','Khan','1235','+01712125478','sakib@gmail.com','Officer','12','01','B','Dhaka','Normal');
Insert Into Signup(User_id,First_name,Last_name,User_pwd,Contact_number,User_email,Occupation,House_number,Road_number,Block,City,Request)     Values('U0000003','Aakib','Khan','1236','+01712365478','aakib@gmail.com','Teacher','941','03','C','Dhaka','Metrocard');
Insert Into Signup(User_id,First_name,Last_name,User_pwd,Contact_number,User_email,Occupation,House_number,Road_number,Block,City,Request)     Values('U0000004','Mohoto','Khan','1237','+01712366578','mohot@gmail.com','businessman','542','08','D','Dhaka','Normal');
Insert Into Signup(User_id,First_name,Last_name,User_pwd,Contact_number,User_email,Occupation,House_number,Road_number,Block,City,Request)     Values('U0000005','Ishak','Khan','1238','+01712365433','ishak@gmail.com','Banker','03','10','E','Dhaka','Metrocard');


Insert Into Helpline(Complaint_id,Shift,Complaint_msg,First_name,Last_name,Contact_gmail,Contact_number,Complaint_Time)     Values('Cmp000001','Day','Rough behaviour of staff','Muhit','Baroi','muhut678@gmail.com','+8801954218907',SYSTIMESTAMP);
Insert Into Helpline(Complaint_id,Shift,Complaint_msg,First_name,Last_name,Contact_gmail,Contact_number,Complaint_Time)     Values('Cmp000002','Night','Lost Metrocard: 9078965789','Adib','Hassan','adib.hassan.89@gmail.com','+88018964216789',SYSTIMESTAMP);
Insert Into Helpline(Complaint_id,Shift,Complaint_msg,First_name,Last_name,Contact_gmail,Contact_number,Complaint_Time)     Values('Cmp000003','Night','Lost Metrocard: 9078355789','sadib','Khan','sadib.khan.89@gmail.com','+88018964316789',SYSTIMESTAMP);
Insert Into Helpline(Complaint_id,Shift,Complaint_msg,First_name,Last_name,Contact_gmail,Contact_number,Complaint_Time)     Values('Cmp000004','Day','Drunk robbers robbed my money','Carol','Roy','carol.roy.89@gmail.com','+88018968916789',SYSTIMESTAMP);


Insert Into Complaint_management(Complaint_id,Status,Reply_msg,Reply_Time) Values('Cmp000001','Checked','Sir we have warned our staff. Thank you.',TO_TIMESTAMP('2019-04-10 10:30:00','YYYY-MM-DD HH:MI:SS'));
Insert Into Complaint_management(Complaint_id,Status,Reply_msg,Reply_Time) Values('Cmp000002','Unchecked','Need some time to issue another metro card.',TO_TIMESTAMP('2019-04-05 10:30:00','YYYY-MM-DD HH:MI:SS'));
Insert Into Complaint_management(Complaint_id,Status,Reply_msg,Reply_Time) Values('Cmp000003','Unchecked','Need some time to issue another metro card.',TO_TIMESTAMP('2019-05-05 10:30:00','YYYY-MM-DD HH:MI:SS'));
Insert Into Complaint_management(Complaint_id,Status,Reply_msg,Reply_Time) Values('Cmp000004','Unchecked','We will investigate the event.Please send us detailed information of that occurence.',TO_TIMESTAMP('2019-04-05 10:30:00','YYYY-MM-DD HH:MI:SS'));


Insert Into User_phone_number(User_id,Contact_number)     Values('U0000001','+8801938903196');
Insert Into User_phone_number(User_id,Contact_number)     Values('U0000002','+8801938903197');
Insert Into User_phone_number(User_id,Contact_number)     Values('U0000003','+8801938903198');
Insert Into User_phone_number(User_id,Contact_number)     Values('U0000004','+8801938903199');


Insert Into Permission(User_id,Status)         Values('U0000001','Granted');
Insert Into Permission(User_id,Status)         Values('U0000002','Not Granted');
Insert Into Permission(User_id,Status)         Values('U0000003','Not Granted');
Insert Into Permission(User_id,Status)         Values('U0000004','Granted');


Insert Into User_login(User_id,User_pwd)         Values('U0000001','1234');
Insert Into User_login(User_id,User_pwd)         Values('U0000002','1235');
Insert Into User_login(User_id,User_pwd)         Values('U0000003','1236');
Insert Into User_login(User_id,User_pwd)         Values('U0000004','1237');
Insert Into User_login(User_id,User_pwd)         Values('U0000005','1238');


Insert Into Counter(Counter_id,Manager_name,Available_seats,Sold_tickets) Values('CT0000001','Seikh Mujib','30','70');
Insert Into Counter(Counter_id,Manager_name,Available_seats,Sold_tickets) Values('CT0000002','Ziaur Rahman','20','80');
Insert Into Counter(Counter_id,Manager_name,Available_seats,Sold_tickets) Values('CT0000003','Tarek Zia','40','60');
Insert Into Counter(Counter_id,Manager_name,Available_seats,Sold_tickets) Values('CT0000004','Fakhrul Islam','10','90');
Insert Into Counter(Counter_id,Manager_name,Available_seats,Sold_tickets) Values('CT0000005','Moumita Bhoumik','400','100');



Insert Into Counter_number(Counter_id,Contact_number) Values('CT0000001','01916880002');
Insert Into Counter_number(Counter_id,Contact_number) Values('CT0000002','01710980002');
Insert Into Counter_number(Counter_id,Contact_number) Values('CT0000003','0181120002');
Insert Into Counter_number(Counter_id,Contact_number) Values('CT0000004','01916670002');
Insert Into Counter_number(Counter_id,Contact_number) Values('CT0000005','01916430002');


Insert Into Recharge(Recharge_id,User_id,Recharge_date,Recharge_Amount,Validity,Payment_method)  Values('R0000001','U0000001',to_date('22-04-2019','DD-MM-YYYY'),'100',to_date('22-03-2019','DD-MM-YYYY'),'Bkash');
Insert Into Recharge(Recharge_id,User_id,Recharge_date,Recharge_Amount,Validity,Payment_method)  Values('R0000002','U0000002',to_date('16-04-2019','DD-MM-YYYY'),'500',to_date('16-04-2019','DD-MM-YYYY'),'Cash');
Insert Into Recharge(Recharge_id,User_id,Recharge_date,Recharge_Amount,Validity,Payment_method)  Values('R0000003','U0000003',to_date('28-04-2019','DD-MM-YYYY'),'1000',to_date('28-04-2020','DD-MM-YYYY'),'Bkash');
Insert Into Recharge(Recharge_id,User_id,Recharge_date,Recharge_Amount,Validity,Payment_method)  Values('R0000004','U0000004',to_date('28-04-2019','DD-MM-YYYY'),'1000',to_date('28-04-2020','DD-MM-YYYY'),'Bkash');
Insert Into Recharge(Recharge_id,User_id,Recharge_date,Recharge_Amount,Validity,Payment_method)  Values('R0000005','U0000005',to_date('28-04-2019','DD-MM-YYYY'),'1000',to_date('28-04-2020','DD-MM-YYYY'),'Bkash');



Insert Into Salary(Trans_id,Issue_date,Salary_type,Base,Bonus,Overtime,Status)  Values('Tr0000001',to_date('03-04-2019','DD-MM-YYYY'),'Daily','500','100',1,'Given');
Insert Into Salary(Trans_id,Issue_date,Salary_type,Base,Bonus,Overtime,Status)  Values('Tr0000002',to_date('04-04-2019','DD-MM-YYYY'),'Monthly','40000','5000',3,'Not Given');
Insert Into Salary(Trans_id,Issue_date,Salary_type,Base,Bonus,Overtime,Status)  Values('Tr0000003',to_date('05-04-2019','DD-MM-YYYY'),'Daily','1000','300',2,'Given');
Insert Into Salary(Trans_id,Issue_date,Salary_type,Base,Bonus,Overtime,Status)  Values('Tr0000004',to_date('06-04-2019','DD-MM-YYYY'),'Monthly','45000','1000',3,'Not Given');
Insert Into Salary(Trans_id,Issue_date,Salary_type,Base,Bonus,Overtime,Status)  Values('Tr0000005',to_date('07-04-2019','DD-MM-YYYY'),'Daily','11000','400',4,'Given');


Insert Into Tickets(Ticket_id,Ticket_type,Compartment_name,Number_of_seats,From_station,To_station)    Values('Ti0000001','AC','Normal',3,'Uttara','Agargaon');
Insert Into Tickets(Ticket_id,Ticket_type,Compartment_name,Number_of_seats,From_station,To_station)    Values('Ti0000002','Non-AC','Business',4,'Mirpur-10','Agargaon');
Insert Into Tickets(Ticket_id,Ticket_type,Compartment_name,Number_of_seats,From_station,To_station)    Values('Ti0000003','AC','Business',2,'Mirpur-11','Agargaon');
Insert Into Tickets(Ticket_id,Ticket_type,Compartment_name,Number_of_seats,From_station,To_station)    Values('Ti0000004','Non-AC','Business',1,'Agargaon','Kazipara');
Insert Into Tickets(Ticket_id,Ticket_type,Compartment_name,Number_of_seats,From_station,To_station)    Values('Ti0000005','Non-AC','Business',2,'Uttara','Shewrapara');


Insert Into driver(staff_id,licence_number,licence_validity)  Values('S0000003','LISC000001',to_date('01-04-2019','DD-MM-YYYY'));
Insert Into driver(staff_id,licence_number,licence_validity)  Values('S0000009','LISC000002',to_date('02-04-2019','DD-MM-YYYY'));
Insert Into driver(staff_id,licence_number,licence_validity)  Values('S0000011','LISC000003',to_date('03-04-2019','DD-MM-YYYY'));


Insert Into station_master(staff_id,station_id,counter_id)  Values('S0000001','S002','CT0000001');
Insert Into station_master(staff_id,station_id,counter_id)  Values('S0000004','S003','CT0000004');
Insert Into station_master(staff_id,station_id,counter_id)  Values('S0000005','S004','CT0000003');


Insert Into NID (nid) Values ('NID00000000001');
Insert Into NID (nid) Values ('NID00000000002');
Insert Into NID (nid) Values ('NID00000000003');
Insert Into NID (nid) Values ('NID00000000004');
Insert Into NID (nid) Values ('NID00000000005');
Insert Into NID (nid) Values ('NID00000000006');
Insert Into NID (nid) Values ('NID00000000007');


Insert Into fund(fund_id,amount,transfer_date,Reference) Values ('FUND00001',5000000,to_date('03-04-2019','DD-MM-YYYY'),'Tahmid Hasan Sakib');
Insert Into fund(fund_id,amount,transfer_date,Reference) Values ('FUND00002',6000000,to_date('05-05-2019','DD-MM-YYYY'),'Aakib Zaman');
Insert Into fund(fund_id,amount,transfer_date,Reference) Values ('FUND00003',15000000,to_date('01-06-2019','DD-MM-YYYY'),'Mustaquim Abrar');
Insert Into fund(fund_id,amount,transfer_date,Reference) Values ('FUND00004',13400000,to_date('02-07-2019','DD-MM-YYYY'),'Rahul Mahato');
Insert Into fund(fund_id,amount,transfer_date,Reference) Values ('FUND00005',3500000,to_date('15-08-2019','DD-MM-YYYY'),'Md. Ishak');


Insert Into needs_fund(train_id,component_id,fund_id) Values ('T0000001','C000000001','FUND00001');
Insert Into needs_fund(train_id,component_id,fund_id) Values ('T0000002','C000000002','FUND00002');
Insert Into needs_fund(train_id,component_id,fund_id) Values ('T0000003','C000000003','FUND00003');



Insert Into Fare(Source,Destination,Price) Values ('Uttara','Agargaon',200);
Insert Into Fare(Source,Destination,Price) Values ('Agargaon','Kazipara',150);
Insert Into Fare(Source,Destination,Price) Values ('Uttara','Shewrapara',150);
Insert Into Fare(Source,Destination,Price) Values ('Mirpur-10','Uttara',100);
Insert Into Fare(Source,Destination,Price) Values ('Mirpur-11','Uttara',120);
Insert Into Fare(Source,Destination,Price) Values ('Agargaon','Uttara',200);
Insert Into Fare(Source,Destination,Price) Values ('Kazipara','Agargaon',150);
Insert Into Fare(Source,Destination,Price) Values ('Shewrapara','Uttara',150);
Insert Into Fare(Source,Destination,Price) Values ('Uttara','Mirpur-10',100);
Insert Into Fare(Source,Destination,Price) Values ('Uttara','Mirpur-11',120);


Insert Into Has_component(Component_id,Train_id)  Values('C000000001','T0000001');
Insert Into Has_component(Component_id,Train_id)  Values('C000000002','T0000002');
Insert Into Has_component(Component_id,Train_id)  Values('C000000003','T0000003');
Insert Into Has_component(Component_id,Train_id)  Values('C000000004','T0000004');
Insert Into Has_component(Component_id,Train_id)  Values('C000000005','T0000005');


Insert Into Route_details(Train_id,Station_id)  Values('T0000001','S001');
Insert Into Route_details(Train_id,Station_id)  Values('T0000002','S002');
Insert Into Route_details(Train_id,Station_id)  Values('T0000003','S003');
Insert Into Route_details(Train_id,Station_id)  Values('T0000004','S004');
Insert Into Route_details(Train_id,Station_id)  Values('T0000005','S005');



Insert Into Call(User_id,Complaint_id)  Values('U0000001','Cmp000001');
Insert Into Call(User_id,Complaint_id)  Values('U0000002','Cmp000002');
Insert Into Call(User_id,Complaint_id)  Values('U0000003','Cmp000003');
Insert Into Call(User_id,Complaint_id)  Values('U0000004','Cmp000004');


Insert Into Query(Ticket_id,Train_id)  Values('Ti0000001','T0000001');
Insert Into Query(Ticket_id,Train_id)  Values('Ti0000002','T0000002');
Insert Into Query(Ticket_id,Train_id)  Values('Ti0000003','T0000003');
Insert Into Query(Ticket_id,Train_id)  Values('Ti0000004','T0000004');
Insert Into Query(Ticket_id,Train_id)  Values('Ti0000005','T0000005');


Insert Into Buy(User_id,Ticket_id)  Values('U0000001','Ti0000001');
Insert Into Buy(User_id,Ticket_id)  Values('U0000002','Ti0000002');
Insert Into Buy(User_id,Ticket_id)  Values('U0000003','Ti0000003');
Insert Into Buy(User_id,Ticket_id)  Values('U0000004','Ti0000004');
Insert Into Buy(User_id,Ticket_id)  Values('U0000005','Ti0000005');



Insert Into Gets(User_pwd,User_id)  Values('1234','U0000001');
Insert Into Gets(User_pwd,User_id)  Values('1235','U0000002');
Insert Into Gets(User_pwd,User_id)  Values('1236','U0000003');
Insert Into Gets(User_pwd,User_id)  Values('1237','U0000004');
Insert Into Gets(User_pwd,User_id)  Values('1238','U0000005');


Insert Into Recharge_details(Recharge_id,User_id)  Values('R0000001','U0000001');
Insert Into Recharge_details(Recharge_id,User_id)  Values('R0000002','U0000002');
Insert Into Recharge_details(Recharge_id,User_id)  Values('R0000003','U0000003');
Insert Into Recharge_details(Recharge_id,User_id)  Values('R0000004','U0000004');
Insert Into Recharge_details(Recharge_id,User_id)  Values('R0000005','U0000005');


Insert Into Has(Staff_id,Train_id)  Values('S0000001','T0000001');
Insert Into Has(Staff_id,Train_id)  Values('S0000002','T0000002');
Insert Into Has(Staff_id,Train_id)  Values('S0000003','T0000003');
Insert Into Has(Staff_id,Train_id)  Values('S0000004','T0000004');
Insert Into Has(Staff_id,Train_id)  Values('S0000005','T0000005');


Insert Into Gets_Salary(Staff_id,Trans_id)  Values('S0000001','Tr0000001');
Insert Into Gets_Salary(Staff_id,Trans_id)  Values('S0000002','Tr0000002');
Insert Into Gets_Salary(Staff_id,Trans_id)  Values('S0000003','Tr0000003');
Insert Into Gets_Salary(Staff_id,Trans_id)  Values('S0000004','Tr0000004');
Insert Into Gets_Salary(Staff_id,Trans_id)  Values('S0000005','Tr0000005');



Insert Into Staff_Chatbox(From_staff_id,To_staff_id,Chat_id,Chat_time,message) Values('S0000001','S0000002','Ch0000001',TO_TIMESTAMP('2019-04-11 10:30:00','YYYY-MM-DD HH:MI:SS'),'When you realize you want to spend the rest of your life with somebody, you want the rest of your life to start as soon as possible.');
Insert Into Staff_Chatbox(From_staff_id,To_staff_id,Chat_id,Chat_time,message) Values('S0000003','S0000003','Ch0000002',TO_TIMESTAMP('2019-04-12 10:30:00','YYYY-MM-DD HH:MI:SS'),'If you let my daughter go now, that will be the end of it. I will not look for you, I will not pursue you. But if you dont, I will look for you, I will find you, and I will kill you.');
Insert Into Staff_Chatbox(From_staff_id,To_staff_id,Chat_id,Chat_time,message) Values('S0000002','S0000004','Ch0000003',TO_TIMESTAMP('2019-04-13 10:30:00','YYYY-MM-DD HH:MI:SS'),'You know how to whistle, dont you, Steve? You just put your lips together and blow.');
Insert Into Staff_Chatbox(From_staff_id,To_staff_id,Chat_id,Chat_time,message) Values('S0000005','S0000005','Ch0000004',TO_TIMESTAMP('2019-04-14 10:30:00','YYYY-MM-DD HH:MI:SS'),'The greatest trick the devil ever pulled was convincing the world he didnt exist.');
Insert Into Staff_Chatbox(From_staff_id,To_staff_id,Chat_id,Chat_time,message) Values('S0000002','S0000001','Ch0000005',TO_TIMESTAMP('2019-04-15 10:30:00','YYYY-MM-DD HH:MI:SS'),'You dont understand! I could have had class. I could have been a contender. I could have been somebody, instead of a bum, which is what I am.');



Insert Into Seat(Train_id,Bill,Passenger_id,First_name,Last_name,Num_of_seats,Compartment_name,Seat_num)      Values('T0000001',300,'P0000001','Akib','Zaman',3,'Normal','A-01');
Insert Into Seat(Train_id,Bill,Passenger_id,First_name,Last_name,Num_of_seats,Compartment_name,Seat_num)      Values('T0000001',500,'P0000002','Tahmid','Sakib',5,'Business','B-02');
Insert Into Seat(Train_id,Bill,Passenger_id,First_name,Last_name,Num_of_seats,Compartment_name,Seat_num)      Values('T0000001',1000,'P0000003','Md.','Ishak',10,'Normal','F-01');
Insert Into Seat(Train_id,Bill,Passenger_id,First_name,Last_name,Num_of_seats,Compartment_name,Seat_num)      Values('T0000003',800,'P0000004','Abrar','Rahman',8,'Normal','D-01');
Insert Into Seat(Train_id,Bill,Passenger_id,First_name,Last_name,Num_of_seats,Compartment_name,Seat_num)      Values('T0000005',700,'P0000005','Rahul','Mohoto',7,'Business','E-01');


Insert Into Seats Values('A-01');
Insert Into Seats Values('A-02');
Insert Into Seats Values('B-01');
Insert Into Seats Values('B-02');
Insert Into Seats Values('C-01');
Insert Into Seats Values('C-02');
Insert Into Seats Values('D-01');
Insert Into Seats Values('D-02');
Insert Into Seats Values('E-01');
Insert Into Seats Values('E-02');
Insert Into Seats Values('F-01');
Insert Into Seats Values('F-02');
Insert Into Seats Values('G-01');
Insert Into Seats Values('G-02');
Insert Into Seats Values('H-01');
Insert Into Seats Values('H-02');
Insert Into Seats Values('I-01');
Insert Into Seats Values('I-02');
Insert Into Seats Values('J-01');
Insert Into Seats Values('J-02');
Insert Into Seats Values('K-01');
Insert Into Seats Values('K-02');
Insert Into Seats Values('L-01');
Insert Into Seats Values('L-02');


Insert Into Has_counter Values('S001','CT0000001');
Insert Into Has_counter Values('S001','CT0000002');
Insert Into Has_counter Values('S001','CT0000003');
Insert Into Has_counter Values('S001','CT0000004');
Insert Into Has_counter Values('S003','CT0000001');
Insert Into Has_counter Values('S003','CT0000005');
Insert Into Has_counter Values('S005','CT0000001');
Insert Into Has_counter Values('S005','CT0000003');
Insert Into Has_counter Values('S005','CT0000005');


Insert Into  Checks(Passenger_id,Counter_id)  Values('P0000001','CT0000001');
Insert Into  Checks(Passenger_id,Counter_id)  Values('P0000002','CT0000002');
Insert Into  Checks(Passenger_id,Counter_id)  Values('P0000003','CT0000003');
Insert Into  Checks(Passenger_id,Counter_id)  Values('P0000004','CT0000004');
Insert Into  Checks(Passenger_id,Counter_id)  Values('P0000005','CT0000005');


Insert Into  Reserve(Ticket_id,Passenger_id)  Values('Ti0000001','P0000001');
Insert Into  Reserve(Ticket_id,Passenger_id)  Values('Ti0000002','P0000002');
Insert Into  Reserve(Ticket_id,Passenger_id)  Values('Ti0000003','P0000003');
Insert Into  Reserve(Ticket_id,Passenger_id)  Values('Ti0000004','P0000004');
Insert Into  Reserve(Ticket_id,Passenger_id)  Values('Ti0000005','P0000005');