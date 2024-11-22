# SQL Assignment

1. Retrieve the first 5 members from the Members table

`select * from Members limit 5;`
![Simple - Question 1](img/simple-01.png)

2. Retrieve 5 members starting from the 6th row

`select * from Members limit 5 offset 5;`



    3. List members who are older than 30 years
        ◦ select * from Members where Member_Age > 30;
    4. Find members who live in either New York or Los Angeles
        ◦ select * from Members where Member_Location in( 'New York' , 'Los Angeles');
    5. Retrieve all vehicles where the make is either 'Toyota' or 'Honda'
        ◦ select * from Vehicles where Vehicle_Make in ( 'Toyota', 'Honda' );
    6. Find members whose age is between 25 and 40 years
        ◦ select * from Members where Member_age between 25 and 40;
    7. List vehicles whose registration number starts with the letter 'A'
        ◦ select * from Vehicles where Vehicle_Registration like ‘A%’;
    8. Find vehicles where the model ends with the number '5'
        ◦ select * from Vehicles where Vehicle_Model Like '%5';
    9. List all engineers and order them alphabetically by their last name
        ◦ select * from Engineers Order by Last_Name ASC;
    10. Retrieve all members and order them by age in descending order
        ◦ select * from Members order by Member_Age DESC;
    11. Count the total number of members in the Member table
        ◦ select count(*) as 'Number of Members' from Members;
          








    12. Retrieve all breakdowns that occurred in the year 2024
        ◦ select * from Breakdown where Breakdown_Date Like '2024%';
    13. Find breakdowns for vehicles with the registration 'ABC1234' or 'XYZ5678'
        ◦ select * from Breakdown where Vehicle_Registration in ( 'ABC1234', 'XYZ5678' );
    14. List all vehicles with the make 'Ford'
        ◦ select * from Vehicles where Vehicle_Make = 'Ford';
    15. Find members whose first name starts with the letter 'J'
        ◦ select * from Members where First_Name like 'J%';
    16. Retrieve breakdowns that occurred before 1st October 2024 (New date, not 1st September 2024)
        ◦ select * from Breakdown where Breakdown_Date < '2024-10-01';
    17. List members whose last name contains 'son'
        ◦ select * from Members where Last_Name like '%son';
    18. Find breakdowns that occurred in locations containing 'New'
        ◦ select * from Breakdown where Breakdown_Location like '%New%';
    19. Retrieve the youngest member in the Member table.
        ◦ select concat( First_Name, ' ', Last_Name ) as 'Full Name', Min( Member_Age ) as 'Oldest Member' from Members where Member_Age = (select Min(Member_Age) from Members) order by Member_Age deSC limit 1;







    20. Retrieve the oldest member in the Member table
        ◦ select concat( First_Name, ' ', Last_Name ) as 'Full Name', max( Member_Age ) as 'Oldest Member' from Members where Member_Age = (select Max(Member_Age) from Members) order by Member_Age desc limit 1;







    21. Find vehicles owned by members who live in Los Angeles
        ◦ select concat( Members.First_Name, ' ', Members.Last_Name ) as 'Full Name', Members.Member_Location, concat( Vehicles.Vehicle_Make, ' ', Vehicles.Vehicle_Model ) as 'Make / Model' from Members right join Vehicles on Members.Member_ID = Vehicles.FK_Member_ID where Members.Member_Location = 'Los Angeles';







    22. Retrieve all breakdowns handled by engineer with ID 1
        ◦ select * from Breakdown where Engineer_ID = 1;
    23. List all members who are younger than 35 years
        ◦ select concat ( First_Name, ' ', Last_Name ) as 'Full Name', Member_age from Members where Member_age < 35;









 


    24. Find members who live in either Phoenix or Houston
        ◦ select * from Members where Member_Location in ( 'Phoenix', 'Houston' );
    25. Retrieve vehicles where the model is either 'Civic' or 'Mustang'
        ◦ select * from Vehicles where Vehicle_Model in ( 'Civic', 'Mustang')
    26. List members whose first name contains the letter 'a'
        ◦ select concat (First_Name, ' ', Last_Name ) as 'Full Name' from Members where First_Name like '%a%';













    27. Retrieve breakdowns that occurred between 1st September to 30st September (New date as nothing for and between 1st August 2024, and 31st August 2024 
        ◦ select * from Breakdown where Breakdown_Date between '2024-09-01' and '2024-09-30';
    28. Find members whose age is not between 20 and 40 years
        ◦ select * from Members where Member_Age not between 20 and 40;
    29. List breakdowns that occurred after October 1, 2024
        ◦ select * from Breakdown where Breakdown_Date > '2024-10-01';
    30. Retrieve the top 3 oldest members from the Member table
        ◦ select concat ( First_Name, ' ', Last_Name) as 'Full Name', Member_Age from Members order by Member_Age deSC limit 3;