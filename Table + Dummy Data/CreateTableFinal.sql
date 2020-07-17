Create table Trains
(
    Train_id             VARCHAR2(12),
    Train_name            VARCHAR2(20),
    Capacity             NUMERIC,
    Status                VARCHAR2(12),
    Driver                VARCHAR2(50),    
    Type                VARCHAR2(12),
    Length              NUMERIC,
    Start_station         VARCHAR2(12),
    Stop_station          VARCHAR2(12),
    CONSTRAINT Trains_pk PRIMARY KEY(Train_id)
);

Create table Train_scheduler
(
    Train_id         VARCHAR2(12),
    Source            VARCHAR2(20),
    Destination        VARCHAR2(20),
    Day                VARCHAR2(20),
    Arrival_time       TIMESTAMP(0) ,
    Departure_time     TIMESTAMP(0) ,
    CONSTRAINT Train_scheduler_pk PRIMARY KEY(Train_id),
    CONSTRAINT Train_scheduler_fk FOREIGN KEY(Train_id) REFERENCES Trains(Train_id) ON DELETE CASCADE
);

Create table Train_manufacture
(
    Train_id             VARCHAR2(12),
    Inauguration_date   DATE,
    Model_number        VARCHAR2(12),
    Company_name         VARCHAR2(30),
    Imported_from        VARCHAR2(20),
    Status                VARCHAR2(12),
    CONSTRAINT Train_manufacture_pk PRIMARY KEY(Train_id),
    CONSTRAINT Train_manufacture_fk FOREIGN KEY(Train_id) REFERENCES Trains(Train_id) ON DELETE CASCADE
);

Create table Train_manufacture_number
(
    Train_id         VARCHAR2(12),
    Contact_number    VARCHAR2(15),
    CONSTRAINT Train_mcn_pk PRIMARY KEY(Train_id,Contact_number),
    CONSTRAINT Train_mcn_fk FOREIGN KEY(Train_id) REFERENCES Train_manufacture(Train_id) ON DELETE CASCADE
);

Create table Train_manufacture_gmail
(
    Train_id         VARCHAR2(12),
    Contact_gmail     VARCHAR2(40),
    CONSTRAINT Train_mcg_pk PRIMARY KEY(Train_id,Contact_gmail),
    CONSTRAINT Train_mcg_fk FOREIGN KEY(Train_id) REFERENCES Train_manufacture(Train_id) ON DELETE CASCADE
);

Create table Seat_Management
(
    Train_id VARCHAR2(12),
    Total_compartment    NUMERIC,
    Seat_per_compartment    NUMERIC,
    CONSTRAINT Seat_Management_pk PRIMARY KEY(Train_id),
    CONSTRAINT Seat_Management_fk FOREIGN KEY(Train_id) REFERENCES Trains(Train_id) ON DELETE CASCADE   
);

Create table Train_component
(
    Train_id             VARCHAR2(12),
    Component_id         VARCHAR2(12),
    Status                VARCHAR2(12),
    Cost                 NUMERIC,
    Installation_date    DATE,
    Manufacture_date     DATE,
    Next_checkup        DATE,
    Component_type        VARCHAR2(12),
    Manufacturer        VARCHAR2(50),
    CONSTRAINT Train_component_pk PRIMARY KEY(Train_id,Component_id),
    CONSTRAINT Train_component_fk FOREIGN KEY(Train_id) REFERENCES Trains(Train_id) ON DELETE CASCADE
);

Create table Repair
(
    Train_id     VARCHAR2(12),
    Component_id     VARCHAR2(12),
    Cost         NUMERIC,
    Status        VARCHAR2(12),
    Repair_parts    VARCHAR2(30),
    Description    VARCHAR2(50),
    Send_to_repair  Date,
    Repaired_date    DATE,
    CONSTRAINT Repair_pk PRIMARY KEY(Train_id,Component_id),
    CONSTRAINT Repair_Component_id_fk FOREIGN KEY(Component_id,Train_id) REFERENCES Train_component(Component_id,Train_id) ON DELETE CASCADE
);


Create table Staff
(
    Staff_id        VARCHAR2(12),
    User_email      varchar2(30),
    User_pwd        varchar2(12),   
    Supervisor_id       varchar(12),
    DOB                DATE,
    Status            VARCHAR2(10) DEFAULT 'working',
    first_name        VARCHAR2(20) NOT NULL,
    Last_name        VARCHAR2(20) NOT NULL,
    Shift            VARCHAR2(10),
    Worker_type        VARCHAR2(15),
    Address_house_number    VARCHAR2(5),
    Address_road_number        VARCHAR2(2),
    Address_block             VARCHAR2(3),
    Address_city             VARCHAR2(12),
    Balance             NUMERIC DEFAULT 0,
    CONSTRAINT Staff_pk PRIMARY KEY(Staff_id)
);


Create table Repair_workers_involve
(
    staff_id            varchar2(12),
    Speciality         VARCHAR2(30),
    Working_area        VARCHAR2(20),
    CONSTRAINT Repair_workers_involve_pk PRIMARY KEY(Staff_id),
    CONSTRAINT Repair_workers_involve_fk FOREIGN KEY(staff_id) REFERENCES Staff(staff_id) ON DELETE CASCADE
);

Create table Repair_log_book
(
    Train_id     VARCHAR2(12),
    Component_id     VARCHAR2(12),
    Repair_parts    VARCHAR2(30),
    Description    VARCHAR2(50),
    Send_to_repair  Date,
    Repaired_date    DATE,
    CONSTRAINT Repair_logbook_pk PRIMARY KEY(Train_id,Component_id),
    CONSTRAINT Repair_logbook_fk FOREIGN KEY(Component_id,Train_id) REFERENCES Train_component(Component_id,Train_id) ON DELETE CASCADE  
);


Create table Stations
(
    Station_id         VARCHAR2(12),
    Station_address VARCHAR2(12),
    Lattitude        NUMERIC,
    Longitude        NUMERIC,
    CONSTRAINT Stations_pk PRIMARY KEY(Station_id)
);


Create table Route
(
    Train_id            VARCHAR2(12),
    Station_id         VARCHAR2(12),
    Arrival_time         VARCHAR2(50),
    Departure_time       VARCHAR2(50),
    CONSTRAINT Route_pk PRIMARY KEY(Train_id,Station_id),
    CONSTRAINT Route_train_fk FOREIGN KEY(Train_id) REFERENCES Trains(Train_id) ON DELETE CASCADE,
    CONSTRAINT Route_station_fk FOREIGN KEY(Station_id) REFERENCES Stations(Station_id) ON DELETE CASCADE
);


Create table Signup
(    
    User_id            VARCHAR2(20),    
    First_name        VARCHAR2(12) NOT NULL,
    Last_name        VARCHAR2(12) NOT NULL,     
    User_pwd        VARCHAR2(30) NOT NULL,
    Contact_number  VARCHAR2(12),
    User_email        VARCHAR2(30),
    Occupation         VARCHAR2(15),    
    House_number    VARCHAR2(5),
    Road_number        VARCHAR2(2),
    Block             VARCHAR2(3),
    City             VARCHAR2(15),  
    Status           VARCHAR2(15),
    Request         VARCHAR2(15),  
    CONSTRAINT Signup_pk PRIMARY KEY(User_id)
);

Create table Users
(
    User_id            VARCHAR2(20),    
    First_name        VARCHAR2(12) NOT NULL,
    Last_name        VARCHAR2(12) NOT NULL,     
    User_pwd        VARCHAR2(30) NOT NULL,
    Contact_number  VARCHAR2(12),
    User_email        VARCHAR2(30),
    Occupation         VARCHAR2(15),    
    House_number    VARCHAR2(5),
    Road_number        VARCHAR2(2),
    Block             VARCHAR2(3),
    City             VARCHAR2(15),
    CONSTRAINT User_pk PRIMARY KEY(User_id),
    CONSTRAINT Signup_fk FOREIGN KEY(User_id) REFERENCES Signup(User_id) ON DELETE CASCADE      
);

Create table  Helpline
(
    Complaint_id    VARCHAR2(12),
    Shift            VARCHAR2(12),
    Complaint_msg    VARCHAR2(200),
    First_name         VARCHAR2(20),
    Last_name         VARCHAR2(20),
    Contact_gmail    VARCHAR2(50),
    Contact_number    VARCHAR2(15),
    Complaint_time     TIMESTAMP(0),
    CONSTRAINT Helpline_pk PRIMARY KEY(Complaint_id)
);

Create table Complaint_management
(
    Complaint_id    VARCHAR2(12),
    Status            VARCHAR2(10),
    Reply_msg             VARCHAR2(200),
    Reply_Time        TIMESTAMP(0),
    CONSTRAINT Complaint_management_pk PRIMARY KEY(Complaint_id),
    CONSTRAINT Complaint_management_fk FOREIGN KEY(Complaint_id) REFERENCES Helpline(Complaint_id) ON DELETE CASCADE
);

Create table Complaint_logbook
(
    Complaint_id    VARCHAR2(12),
    Reply_msg             VARCHAR2(200),
    Reply_Time        TIMESTAMP(0),
    CONSTRAINT Complaint_logbook_pk PRIMARY KEY(Complaint_id),
    CONSTRAINT Complaint_logbook_fk FOREIGN KEY(Complaint_id) REFERENCES Helpline(Complaint_id) ON DELETE CASCADE
);


Create table User_phone_number
(
    User_id            VARCHAR2(12),
    Contact_number    VARCHAR2(15),
    CONSTRAINT User_pn_pk PRIMARY KEY(User_id,Contact_number),
    CONSTRAINT User_pn_fk FOREIGN KEY(User_id) REFERENCES Signup(User_id) ON DELETE CASCADE
);

Create table Permission
(
    User_id        VARCHAR2(20),
    Status          VARCHAR2(12),
    CONSTRAINT Permission_pk PRIMARY KEY(User_id),
    CONSTRAINT Permission_fk FOREIGN KEY(User_id) REFERENCES Signup(User_id) ON DELETE CASCADE
);

Create table User_login
(
    User_id        VARCHAR2(20),
    User_pwd       VARCHAR2(12) NOT NULL,
    CONSTRAINT User_login_pk PRIMARY KEY(User_id),
    CONSTRAINT User_login_fk FOREIGN KEY(User_id) REFERENCES Signup(User_id) ON DELETE CASCADE
);

Create table Seat
(
    Train_id     VARCHAR2(12),
    Passenger_id VARCHAR2(12),
    Bill NUMERIC,
    First_name VARCHAR2(30),
    Last_name VARCHAR2(30),
    Num_of_seats NUMERIC,
    Compartment_name VARCHAR2(30),
    Seat_num VARCHAR2(10),
    CONSTRAINT Seat_pk PRIMARY KEY(Passenger_id),
    CONSTRAINT Seat_fk FOREIGN KEY(Train_id) REFERENCES Trains(Train_id) ON DELETE CASCADE
);

Create table Seats 
(
    Seat_position   VARCHAR2(10),
    CONSTRAINT Seats_pk PRIMARY KEY(Seat_position)
);

Create table Counter
(
    Counter_id            VARCHAR2(12),
    Manager_name        VARCHAR2(30),
    Available_seats        NUMERIC,
    Sold_tickets        NUMERIC,
    CONSTRAINT Counter_pk PRIMARY KEY(Counter_id)
);

Create table Counter_number
(
    Counter_id                VARCHAR2(12),
    Contact_number    VARCHAR2(15),
    CONSTRAINT Counter_number_pk PRIMARY KEY(Counter_id,Contact_number),
    CONSTRAINT Counter_number_fk FOREIGN KEY(Counter_id) REFERENCES Counter(Counter_id) ON DELETE CASCADE
);

Create table MetroCard_user
(
    User_id             VARCHAR2(20),
    NID                    VARCHAR2(200),
    Validity            DATE,
    Subscription_type    VARCHAR2(15),
    CONSTRAINT MetroCard_user_pk PRIMARY KEY(User_id),
    CONSTRAINT MetroCard_user_fk FOREIGN KEY(User_id) REFERENCES Signup(User_id) ON DELETE CASCADE
);

Create table Recharge
(
    Recharge_id            VARCHAR2(15),
    User_id        VARCHAR2(20),
    Recharge_date        DATE,
    Recharge_Amount        NUMERIC,
    Validity            DATE,
    Payment_method        VARCHAR2(10) NOT NULL,
    Transaction_number    VARCHAR2(25),
    CONSTRAINT Recharge_pk PRIMARY KEY(Recharge_id),
    CONSTRAINT Recharge_fk FOREIGN KEY(User_id) REFERENCES Signup(User_id) ON DELETE CASCADE
);


Create table Staff_alumni
(
    Staff_id        VARCHAR2(12),
    DOB                DATE,
    first_name        VARCHAR2(20) NOT NULL,
    Last_name        VARCHAR2(20) NOT NULL,
    Shift            VARCHAR2(10),
    Worker_type        VARCHAR2(15),
    Address_house_number    VARCHAR2(5),
    Address_road_number        VARCHAR2(2),
    Address_block             VARCHAR2(3),
    Address_city             VARCHAR2(12),
    CONSTRAINT Staff_alumni_pk PRIMARY KEY(Staff_id)
);

Create table Salary
(
    Trans_id        VARCHAR2(12),
    Issue_date        DATE,
    Salary_type        VARCHAR2(12),
    Base            NUMERIC CHECK(Base>0),
    Bonus            NUMERIC CHECK(Bonus>=0),
    Overtime        NUMERIC,
    Status            VARCHAR2(20),
    CONSTRAINT Salary_pk PRIMARY KEY(Trans_id)
);


Create table Tickets
(
    Ticket_id            VARCHAR2(20),
    Month               VARCHAR2(20),
    Day                 VARCHAR2(20),
    Ticket_type            VARCHAR2(12),
    Compartment_name    VARCHAR2(12),     
    Number_of_seats      NUMERIC,
	From_station				VARCHAR2(50),
	To_station                  VARCHAR2(50),
    CONSTRAINT Tickets_pk PRIMARY KEY(Ticket_id)
);

create table driver(
    staff_id            varchar2(12),
    licence_number      varchar2(20),
    licence_validity    date,
    CONSTRAINT driver_pk PRIMARY KEY(Staff_id),
    CONSTRAINT driver_fk FOREIGN KEY(staff_id) REFERENCES Staff(staff_id) ON DELETE CASCADE
);



create table station_master(
    staff_id            varchar2(12),
    station_id          varchar2(12),
    counter_id          varchar2(20),
    CONSTRAINT station_master_pk PRIMARY KEY(Staff_id),
    CONSTRAINT station_master_fk FOREIGN KEY(staff_id) REFERENCES Staff(staff_id) ON DELETE CASCADE
);


create table NID
(
    nid                 varchar2(200)
);


create table fund(
    fund_id             varchar2(20),
    amount              number(20),
    transfer_date       date,
    Reference           varchar2(30),
	CONSTRAINT fund_pk PRIMARY KEY(fund_id)
);


create table needs_fund
(
   train_id         varchar2(12),
   component_id     varchar2(12),
   fund_id	    varchar2(20),
   CONSTRAINT Needs_fund_pk PRIMARY KEY(Train_id,Component_id,fund_id),
   CONSTRAINT Need_fund_comp_fk FOREIGN KEY(train_id,component_id) REFERENCES Train_component(train_id,component_id) ON DELETE CASCADE,
   CONSTRAINT Need_fund_fk FOREIGN KEY(fund_id) REFERENCES fund(fund_id) ON DELETE CASCADE
);


Create table Fare
(
	Source 		VARCHAR2(50),
	Destination VARCHAR2(50),
	Price 		NUMERIC
);



Create table Has_component
(
    Component_id VARCHAR2(12),
    Train_id VARCHAR2(12),
    CONSTRAINT Has_component_pk PRIMARY KEY(Train_id,Component_id),
    CONSTRAINT Has_component_Train_id_fk FOREIGN KEY(Train_id) REFERENCES Trains(Train_id) ON DELETE CASCADE,
    CONSTRAINT Has_component_Component_id_fk FOREIGN KEY(Component_id,Train_id) REFERENCES Train_component(Component_id,Train_id) ON DELETE CASCADE
);

Create table Route_details
(
    Train_id VARCHAR2(12),
    Station_id VARCHAR2(12),
    CONSTRAINT Route_details_pk PRIMARY KEY(Train_id,Station_id),
    CONSTRAINT Route_details_Train_id_fk FOREIGN KEY(Train_id) REFERENCES Trains(Train_id) ON DELETE CASCADE,
    CONSTRAINT Route_details_Station_id_fk FOREIGN KEY(Station_id) REFERENCES Stations(Station_id) ON DELETE CASCADE
);

Create table Call
(
    User_id VARCHAR2(20),
    Complaint_id VARCHAR2(12),
    CONSTRAINT Call_pk PRIMARY KEY(User_id,Complaint_id),
    CONSTRAINT Call_User_id_fk FOREIGN KEY(User_id) REFERENCES Signup(User_id) ON DELETE CASCADE,
    CONSTRAINT Call_Complaint_id_fk FOREIGN KEY(Complaint_id) REFERENCES Helpline(Complaint_id) ON DELETE CASCADE
);

Create table Query
(
    Ticket_id VARCHAR2(20),
    Train_id VARCHAR2(12),
    CONSTRAINT Query_pk PRIMARY KEY(Train_id,Ticket_id),
    CONSTRAINT Query_Train_id_fk FOREIGN KEY(Train_id) REFERENCES Trains(Train_id) ON DELETE CASCADE,
    CONSTRAINT Query_Ticket_id_fk FOREIGN KEY(Ticket_id) REFERENCES Tickets(Ticket_id) ON DELETE CASCADE
);

Create table Buy
(
    User_id VARCHAR2(20),
    Ticket_id VARCHAR2(20),
    CONSTRAINT Buy_pk PRIMARY KEY(Ticket_id,User_id),
    CONSTRAINT Buy_User_id_fk FOREIGN KEY(User_id) REFERENCES Signup(User_id) ON DELETE CASCADE,
    CONSTRAINT Buy_Ticket_id_fk FOREIGN KEY(Ticket_id) REFERENCES Tickets(Ticket_id) ON DELETE CASCADE
);

Create table Gets
(
    User_pwd VARCHAR2(30),
    User_id VARCHAR2(20),
    CONSTRAINT Gets_pk PRIMARY KEY(User_id),
    CONSTRAINT Gets_User_id_fk FOREIGN KEY(User_id) REFERENCES Signup(User_id) ON DELETE CASCADE
);

Create table Reserve
(
    Ticket_id VARCHAR2(20),
    Passenger_id VARCHAR2(12),
    CONSTRAINT Reserve_pk PRIMARY KEY(Ticket_id,Passenger_id),
    CONSTRAINT Reserve_Ticket_id_fk FOREIGN KEY(Ticket_id) REFERENCES Tickets(Ticket_id) ON DELETE CASCADE,
    CONSTRAINT Reserve_Passenger_id_fk FOREIGN KEY(Passenger_id) REFERENCES Seat(Passenger_id) ON DELETE CASCADE
);

Create table Checks
(
    Passenger_id VARCHAR2(12),
    Counter_id VARCHAR2(12),
    CONSTRAINT Checks_pk PRIMARY KEY(Passenger_id,Counter_id),
    CONSTRAINT Checks_Passenger_id_fk FOREIGN KEY(Passenger_id) REFERENCES Seat(Passenger_id) ON DELETE CASCADE,
    CONSTRAINT Checks_Counter_id_fk FOREIGN KEY(Counter_id) REFERENCES Counter(Counter_id) ON DELETE CASCADE
);

Create table Recharge_details
(
    Recharge_id VARCHAR2(12),
    User_id VARCHAR2(12),
    CONSTRAINT Recharge_details_pk PRIMARY KEY(Recharge_id,User_id),
    CONSTRAINT Recharge_details_R_id_fk FOREIGN KEY(Recharge_id) REFERENCES Recharge(Recharge_id) ON DELETE CASCADE,
    CONSTRAINT Recharge_details_User_id_fk FOREIGN KEY(User_id) REFERENCES Signup(User_id) ON DELETE CASCADE
);

Create table Has
(
    Staff_id VARCHAR2(12),
    Train_id VARCHAR2(12),
    CONSTRAINT Has_pk PRIMARY KEY(Train_id,Staff_id),
    CONSTRAINT Has_Staff_id_fk FOREIGN KEY(Staff_id) REFERENCES Staff(Staff_id) ON DELETE CASCADE,
    CONSTRAINT Has_Train_id_fk FOREIGN KEY(Train_id) REFERENCES Trains(Train_id) ON DELETE CASCADE
);

Create table Gets_Salary
(
    Staff_id VARCHAR2(12),
    Trans_id VARCHAR2(12),
    CONSTRAINT Gets_salary_pk PRIMARY KEY(Staff_id,Trans_id),
    CONSTRAINT Gets_salary_staff_fk FOREIGN KEY(Staff_id) REFERENCES Staff(Staff_id) ON DELETE CASCADE,
    CONSTRAINT Gets_salary_trans_fk FOREIGN KEY(Trans_id) REFERENCES Salary(Trans_id) ON DELETE CASCADE
);


Create table Staff_Chatbox
(
	From_staff_id		VARCHAR2(20),
        To_staff_id            VARCHAR2(20),
	Chat_id     VARCHAR2(20),
	Chat_time	TIMESTAMP(0),
	Message         VARCHAR2(220),
    CONSTRAINT Chatbox_from_fk FOREIGN KEY(From_staff_id) REFERENCES Staff(Staff_id) ON DELETE CASCADE,
	CONSTRAINT Chatbox_to_fk FOREIGN KEY(To_staff_id) REFERENCES Staff(Staff_id) ON DELETE CASCADE
);

Create table Has_counter
(
    Station_id VARCHAR2(12),
    Counter_id VARCHAR2(12),
    CONSTRAINT Has_counter_pk PRIMARY KEY(Station_id,Counter_id),
    CONSTRAINT Has_counter_station_id_fk FOREIGN KEY(Station_id) REFERENCES Stations(Station_id) ON DELETE CASCADE,
    CONSTRAINT Has_counter_Counter_id_fk FOREIGN KEY(Counter_id) REFERENCES Counter(Counter_id) ON DELETE CASCADE
);
