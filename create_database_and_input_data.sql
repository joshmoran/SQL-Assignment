-- Initialise
create database Breakdown;
use Breakdown;

-- Prevent foregin key checks
    

-- Add Tables;
create table Members (
	Member_ID int not null auto_increment,
	First_Name varchar(20) not null,
	Last_name varchar(20) not null,
	Member_Location varchar(20) not null,
	Member_Age int not null,
	primary key ( Member_ID )
);

create table Vehicles (
	Vehicle_Registration varchar(10) not null,
	Vehicle_Make varchar(10) not null,
	Vehicle_Model varchar(10) not null,
	FK_Member_ID int,
    primary key (Vehicle_Registration),
	constraint fk_Member_ID foreign key (FK_Member_ID) references Members ( Member_ID )
);

create table Engineers (
	Engineer_ID int not null auto_increment,
	First_Name varchar(20) not null,
	Last_Name varchar(20) not null,
	primary key (Engineer_ID)
);

create table Breakdown (
    Breakdown_ID int not null auto_increment,
    Vehicle_Registration varchar(10) not null,
    Engineer_ID int not null,
    Breakdown_Date date not null,
    Breakdown_Time time not null,
    Breakdown_Location varchar(20) not null,
    primary key (Breakdown_ID),
    constraint fk_Vehicle_Registration foreign key (Vehicle_Registration) references Vehicle (Vehicle_Registration),
    constraint fk_Engineer_ID foreign key (Engineer_ID) references Engineer (Engineer_ID)
);



-- Add date to tables

insert into Members ( First_Name, Last_Name, Member_Location, Member_Age ) values
	('John', 'Doe', 'New York', 32),
    ('Jane', 'Smith', 'Los Angeles', 27),
    ('Mark', 'Jones', 'Chicago', 45),
    ('Emily', 'Davis', 'Houston', 30),
    ('Luke', 'Brown', 'Phoenix', 38),
    ('Sophia', 'White', 'Dallas', 29),
    ('Liam', 'Taylor', 'Miami', 41),
    ('Olivia', 'Green', 'San Diego', 36),
    ('James', 'Harris', 'Denver', 33),
    ('Mia', 'Robinson', 'Atlanta', 25)
;



insert into Vehicles ( Vehicle_Registration, Vehicle_Make, Vehicle_Model, Member_ID ) values 
    ( 'ABC1234', 'Toyota', 'Corolla', 1 ),
    ( 'XYZ5678', 'Ford', 'Mustang', 2 ),
    ( 'DEF1111', 'Honda', 'Civic', 3 ),
    ( 'GHI2222', 'Chevy', 'Cruze', 4 ),
    ( 'JKL3333', 'BMV', 'X5', 5 ),
    ( 'MNO4444', 'Audi', 'A4', 1 ),
    ( 'PQR5555', 'Mercedes', 'C300', 2 ),
    ( 'STU6666', 'Nissan', 'Altima', 3 ), 
    ( 'VWX7777', 'Hyundai', 'Elantra', 6 ),
    ( 'YZA8888', 'Tesla', 'Model S', 7 ),
    ( 'BCD9999', 'Kia', 'Sportage', 8 ),
    ( 'EFG1112', 'Subaru', 'Forester', 9 ),
    ( 'HIJ1212', 'Jeep', 'Wrangler', 10 ),
    ( 'KLM1414', 'Mazda', 'CX-5', 4 ),
    ( 'NOP1515', 'Honda', 'Accord', 5 ),
    ( 'QRS1616', 'Chevy', 'Malibu', 6 ),
    ( 'TUV1717', 'Nissan', 'Sentra', 7 ),
    ( 'WXY1818', 'Ford', 'Explorer', 8 ),
    ( 'ZAB1919', 'Volvo', 'XC90', 9 ),
    ( 'CDE2020', 'Lexus', 'RX350', 10 )
;

insert into Engineers ( First_Name, Last_Name ) values 
    ( 'Ethan', 'Williams'),
    ( 'Olivia', 'Miller'),
    ( 'Sophia', 'Clark'),
    ( 'Noah', 'Walker')
;

insert into Breakdown ( Vehicle_Registration, Engineer_ID, Breakdown_Date, Breakdown_Time, Breakdown_Location ) values 
    ('ABC1234', 1, '2024-09-10', '10:30:00', 'New York'),
    ('XYZ5678', 2, '2024-09-10', '11:00:00', 'Los Angeles'),
    ('DEF1111', 3, '2024-09-10', '12:30:00', 'Chicago'),
    ('GHI2222', 4, '2024-09-15', '14:00:00', 'Houston'),
    ('JKL3333', 1, '2024-09-18', '09:45:00', 'Phoenix'),
    ('MNO4444', 2, '2024-09-25', '08:20:00', 'New York'),
    ('PQR5555', 3, '2024-09-28', '11:15:00', 'Los Angeles'),
    ('STU6666', 4, '2024-09-30', '15:30:00', 'Chicago'),
    ('ABC1234', 2, '2024-10-10', '09:30:00', 'New York'),
    ('XYZ5678', 3, '2024-10-15', '13:30:00', 'Los Angeles'),
    ('DEF1111', 4, '2024-10-20', '14:45:00', 'Chicago'),
    ('MNO4444', 1, '2024-10-22', '16:20:00', 'New York'),
    ('JKL3333', 2, '2024-10-25', '17:00:00', 'Phoenix'),
    ('VWX7777', 3, '2024-11-01', '08:00:00', 'Dallas'),
    ('YZA8888', 4, '2024-11-05', '09:00:00', 'Miami'),
    ('BCD9999', 1, '2024-11-10', '10:30:00', 'San Diego'),
    ('EFG1112', 2, '2024-11-15', '14:00:00', 'Denver'),
    ('HIJ1212', 3, '2024-11-18', '11:00:00', 'Atlanta'),
    ('KLM1414', 4, '2024-11-20', '15:45:00', 'Houston'),
    ('NOP1515', 1, '2024-11-25', '16:30:00', 'Phoenix')
;
    
-- For searching for members who no cars (Moderate - Question 8)
insert into Members (First_Name, Last_Name, Member_Location, Member_Age) values ( 'Josh', 'Kelly', 'Houston', 30);
-- For searching for members who have not had a breakdown (Hard - Question 3)
insert into Vehicles values ( 'ZUL0666', 'Ferrari', 'Roma', 11 );