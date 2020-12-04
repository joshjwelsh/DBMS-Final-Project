INSERT INTO Outlet 
VALUES (5, 7574810287, '121 East Street, Fort Lauderdale FL',8718072326);

INSERT INTO Outlet 
VALUES 
(2, 1522305583, '20 NW Lane, New York NY',4848686502);

INSERT INTO Outlet 
VALUES (3, 3810731254, '1010 Ye Lane, Chicago IL',8718072326);

INSERT INTO Outlet 
VALUES 
(4, 2811647753, '22 Testing Avenue, Los Angles CA',4848686502);

INSERT INTO Outlet 
VALUES (1, 5418614705, 'Red Lot Ponce Blvd, Miami FL',8718072326);

Select * From outlet;

INSERT INTO Vehicle
VALUES (4617515767, 1, 'XDF-F', 'Ford', 420, 20, 4, 32.12);



INSERT INTO Vehicle
VALUES (8807351172, 2, 'Model S', 'Tesla', 1000, 0, 5, 100.50);



INSERT INTO Vehicle
VALUES (6089327956, 3, 'Model X', 'Tesla', 10000, 0, 7, 105.50);


INSERT INTO Vehicle
VALUES (7637611473, 4, 'Prius', 'Toyota', 51932, 0, 5, 50.00);



INSERT INTO Vehicle
VALUES (1882028286, 5, 'Roadster', 'Tesla', 1000, 0, 2, 150.00);

Select * From Vehicle;


Insert Into Staff
VALUES (6792108913, 1, 'Josh', 'Welsh', '1232 City Lane, Miami',1293752374 , TO_DATE('04-12-2000','MM-DD-YYYY'), 'M', TO_DATE('01-01-2020', 'MM-DD-YYYY'), 'Owner',50000.01);

Insert Into Staff
VALUES (7444280365, 2, 'Bob', 'Builder', '1032 Bike Avenue, New York',8960967802 , TO_DATE('04-12-1990','MM-DD-YYYY'), 'M', TO_DATE('01-01-2015', 'MM-DD-YYYY'), 'Owner',96030.00);


Insert Into Staff
VALUES (7970668390, 3, 'Alex', 'Fridman', '10 Nw St, Chicago',1068402172 , TO_DATE('12-22-2001','MM-DD-YYYY'), 'M', TO_DATE('04-30-2019', 'MM-DD-YYYY'), 'Owner',52000.01);

Insert Into Staff
VALUES (4617902150, 4, 'Jannette', 'Smith', '1032 Surfer Road, Los Angles',9858549998 , TO_DATE('11-02-1995','MM-DD-YYYY'), 'M', TO_DATE('07-05-2020', 'MM-DD-YYYY'), 'Owner',99030.00);

Insert Into Staff
VALUES (2861883351, 5, 'Jake', 'Lindsay', '1002 Lidar Apartments, Fort Lauderdale',6068299677 , TO_DATE('04-12-1990','MM-DD-YYYY'), 'M', TO_DATE('01-01-2015', 'MM-DD-YYYY'), 'Owner',43230.00);


Select * From Staff;


Insert Into Client
VALUES (8028822224,'Josh', 'Joseph', '653 St Austin, Texas',4043970030 , TO_DATE('04-12-1980','MM-DD-YYYY'), 'M');

Insert Into Client
VALUES (8240452670, 'Alex', 'Fununon', '10 NW 24 St Dallas, Texas',6127288679 , TO_DATE('10-20-2000','MM-DD-YYYY'), 'M');

Insert Into Client
VALUES (3388630185, 'David', 'Mob', '10 St Baltimore, Maryland',4064727884 , TO_DATE('12-22-1971','MM-DD-YYYY'), 'M');

Insert Into Client
VALUES (1578170632, 'Jane', 'Dowe', '5032 Surfer Road, Los Angles',9858549998 , TO_DATE('11-02-1995','MM-DD-YYYY'), 'M');

Insert Into Client
VALUES (2161517274, 'David', 'Blaine', '1002 Lidar Apartments, Fort Lauderdale',5568752339 , TO_DATE('04-12-1963','MM-DD-YYYY'), 'M');

Select * FRom Client;


Insert Into Hireagreement
VALUES (5452916486, 8028822224, 4617515767, TO_DATE('04-20-2019','MM-DD-YYYY'),TO_DATE('05-20-2019','MM-DD-YYYY') );

Insert Into Hireagreement
VALUES (4801444242,8240452670,8807351172, TO_DATE('1-20-2020','MM-DD-YYYY'),TO_DATE('05-19-2020','MM-DD-YYYY') );

Insert Into Hireagreement
Values (9579541632, 3388630185, 6089327956,TO_DATE('3-29-2020','MM-DD-YYYY'),TO_DATE('04-15-2020','MM-DD-YYYY') );

Insert Into hireagreement
Values (5235482910, 1578170632, 7637611473, TO_DATE('6-01-2020','MM-DD-YYYY'),TO_DATE('06-09-2020','MM-DD-YYYY') );

Insert Into hireagreement
Values (9516216753, 2161517274, 1882028286, TO_DATE('7-11-2020','MM-DD-YYYY'),TO_DATE('07-20-2020','MM-DD-YYYY') );

Select * From hireAgreement;