# SQL Assignment

1. Retrieve the first 5 members from the Members table

`select * from Members limit 5;`
![Simple - Question 1](img/simple-1.png)

2. Retrieve 5 members starting from the 6th row

`select * from Members limit 5 offset 5;`
![Simple - Question 2](img/simple-2.png)

3. List members who are older than 30 years

`select * from Members where Member_Age > 30;`
![Simple - Question 3](img/simple-3.png)

4. Find members who live in either New York or Los Angeles

`select * from Members where Member_Location in( 'New York' , 'Los Angeles');`
![Simple - Question 4](img/simple-4.png)

5. Retrieve all vehicles where the make is either 'Toyota' or 'Honda'

`select * from Vehicles where Vehicle_Make in ( 'Toyota', 'Honda' );`
![Simple - Question 5](img/simple-5.png)

6. Find members whose age is between 25 and 40 years

`select * from Members where Member_age between 25 and 40;`
![Simple - Question 6](img/simple-6.png)

7. List vehicles whose registration number starts with the letter 'A'

`select * from Vehicles where Vehicle_Registration like ‘A%’;`
![Simple - Question 7](img/simple-7.png)

8. Find vehicles where the model ends with the number '5'

`select * from Vehicles where Vehicle_Model Like '%5';`
![Simple - Question 8](img/simple-8.png)

9. List all engineers and order them alphabetically by their last name

`select * from Engineers Order by Last_Name ASC;`
![Simple - Question 9](img/simple-9.png)

10. Retrieve all members and order them by age in descending order

`select * from Members order by Member_Age DESC;`
![Simple - Question 10](img/simple-10.png)

11. Count the total number of members in the Member table

`select count(*) as 'Number of Members' from Members;`
![Simple - Question 11](img/simple-11.png)

12. Retrieve all breakdowns that occurred in the year 2024

`select * from Breakdown where Breakdown_Date Like '2024%';`
![Simple - Question 12](img/simple-12.png)

13. Find breakdowns for vehicles with the registration 'ABC1234' or 'XYZ5678'

`select * from Breakdown where Vehicle_Registration in ( 'ABC1234', 'XYZ5678' );`
![Simple - Question 13](img/simple-13.png)

14. List all vehicles with the make 'Ford'

`select * from Vehicles where Vehicle_Make = 'Ford';`
![Simple - Question 14](img/simple-14.png)

15. Find members whose first name starts with the letter 'J'

`select * from Members where First_Name like 'J%';`
![Simple - Question 15](img/simple-15.png)

16. Retrieve breakdowns that occurred before 1st October 2024 (New date, not 1st September 2024)

`select * from Breakdown where Breakdown_Date < '2024-10-01';`
![Simple - Question 16](img/simple-16.png)

17. List members whose last name contains 'son

`select * from Members where Last_Name like '%son';`
![Simple - Question 17](img/simple-17.png)

18. Find breakdowns that occurred in locations containing 'New'

`select * from Breakdown where Breakdown_Location like '%New%';`
![Simple - Question 18](img/simple-18.png)

19. Retrieve the youngest member in the Member table.

`select concat( First_Name, ' ', Last_Name ) as 'Full Name', Min( Member_Age ) as 'Oldest Member' from Members where Member_Age = (select Min(Member_Age) from Members) order by Member_Age deSC limit 1;`
![Simple - Question 19](img/simple-19.png)

20. Retrieve the oldest member in the Member table

`select concat( First_Name, ' ', Last_Name ) as 'Full Name', max( Member_Age ) as 'Oldest Member' from Members where Member_Age = (select Max(Member_Age) from Members) order by Member_Age desc limit 1;`
![Simple - Question 20](img/simple-20.png)

21. Find vehicles owned by members who live in Los Angeles

`select concat( Members.First_Name, ' ', Members.Last_Name ) as 'Full Name', Members.Member_Location, concat( Vehicles.Vehicle_Make, ' ', Vehicles.Vehicle_Model ) as 'Make / Model' from Members right join Vehicles on Members.Member_ID = Vehicles.FK_Member_ID where Members.Member_Location = 'Los Angeles';`
![Simple - Question 21](img/simple-21.png)

22. Retrieve all breakdowns handled by engineer with ID 1

`select * from Breakdown where Engineer_ID = 1;`
![Simple - Question 22](img/simple-22.png)

23. List all members who are younger than 35 years

`select concat ( First_Name, ' ', Last_Name ) as 'Full Name', Member_age from Members where Member_age < 35;`
![Simple - Question 23](img/simple-23.png)

24. Find members who live in either Phoenix or Houston

`select * from Members where Member_Location in ( 'Phoenix', 'Houston' );`
![Simple - Question 24](img/simple-24.png)

25. Retrieve vehicles where the model is either 'Civic' or 'Mustang'

`select * from Vehicles where Vehicle_Model in ( 'Civic', 'Mustang');`
![Simple - Question 25](img/simple-25.png)

26. List members whose first name contains the letter 'a'

`select concat (First_Name, ' ', Last_Name ) as 'Full Name' from Members where First_Name like '%a%';`
![Simple - Question 26](img/simple-26.png)

27. Retrieve breakdowns that occurred between 1st September to 30st September (New date as nothing for and between 1st August 2024, and 31st August 2024 

`select * from Breakdown where Breakdown_Date between '2024-09-01' and '2024-09-30';`
![Simple - Question 27](img/simple-27.png)

28. Find members whose age is not between 20 and 40 years

`select * from Members where Member_Age not between 20 and 40;`
![Simple - Question 28](img/simple-28.png)

29. List breakdowns that occurred after October 1, 2024

`select * from Breakdown where Breakdown_Date > '2024-10-01';`
![Simple - Question 29](img/simple-29.png)

30. Retrieve the top 3 oldest members from the Member table

`select concat ( First_Name, ' ', Last_Name) as 'Full Name', Member_Age from Members order by Member_Age deSC limit 3;`
![Simple - Question 30](img/simple-30.png)