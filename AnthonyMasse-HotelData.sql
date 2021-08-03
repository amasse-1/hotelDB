use hoteldb;
    
    insert into amenities (AmenityID, RoomAmenity, Fee) values 
	(1, 'Mircrowave', 0),
    (2, 'Refridgerator', 0),
    (3, 'Refridgerator, Microwave', 0),
    (4, 'Microwave, Jacuzzi', 25),
    (5, 'Refridgerator, Jacuzzi', 25),
    (6, 'Microwave, Refrigerator, Jacuzzi', 25),
    (7, 'Microwave, Refrigerator, Oven', 0);
    
    insert into room (RoomID, AmenityID, RoomType, StandardOccupancy, MaxOccupancy, BasePrice, ExtraPerson, ADAAccessible) values
	(201, 4, 'Double', 2, 4, 199.99, 10, 'No'),
    (202, 2, 'Double', 2, 4, 174.99, 10, 'Yes'),
    (203, 4, 'Double', 2, 4, 199.99, 10, 'No'),
    (204, 2, 'Double', 2, 4, 174.99, 10, 'Yes'),
    (205, 6, 'Single', 2, 2, 174.99, null, 'No'),
    (206, 3, 'Single', 2, 2, 149.99, null, 'Yes'),
    (207, 6, 'Single', 2, 2, 174.99, null, 'No'),
    (208, 3, 'Single', 2, 2, 149.99, null, 'Yes'),
    (301, 4, 'Double', 2, 4, 199.99, 10, 'No'),
    (302, 2, 'Double', 2, 4, 174.99, 10, 'Yes'),
    (303, 4, 'Double', 2, 4, 199.99, 10, 'No'),
    (304, 2, 'Double', 2, 4, 174.99, 10, 'Yes'),
    (305, 6, 'Single', 2, 2, 174.99, null, 'No'),
    (306, 3, 'Single', 2, 2, 149.99, null, 'Yes'), 
    (307, 6, 'Single', 2, 2, 174.99, null, 'No'),
    (308, 3, 'Single', 2, 2, 149.99, null, 'Yes'),
    (401, 7, 'Suite', 3, 8, 399.99, 20, 'Yes'), 
    (402, 7, 'Suite', 3, 8, 399.99, 20, 'Yes');
    
insert into guest (GuestID, Name, Address, City, State, ZipCode, PhoneNumber) values
	(1,'Anthony Masse', '0 Downtown St', 'Boston', 'MA', '02101', '781-617-2839'),
    (2, 'Mack Simmer', '379 Old Shore St', 'Council Bluffs', 'IA', '51501', '219-553-0508'),
    (3, 'Bettyann Seery', '750 Wintergreen Dr.', 'Wasilla','AK','99654', '478-277-9632'),
    (4, 'Duane Cullison', '9662 Foxrun Lane', 'Harlingen', 'TX', '78552', '308-494-0198'),
    (5, 'Karie Yang', '9378 W. Augusta Ave.', 'West Deptford','NJ','08096', '214-730-0298'),
    (6, 'Aurore Lipton', '762 Wild Rose Street', 'Saginaw', 'MI', '48601', '377-507-0974'),
    (7, 'Zachery Luechtefeld', '7 Poplar Dr.', 'Arvada', 'CO', '80003', '814-485-2615'),
    (8, 'Jeremiah Pendergrass',	'70 Oakwood St.', 'Zion', 'IL', '60099', '279-491-0960'),
    (9, 'Walter Holaway', '7556 Arrowhead St.', 'Cumberland', 'RI', '02864', '446-396-6785'),
    (10, 'Wilfred Vise', '77 West Surrey Street', 'Oswego', 'NY', '13126', '834-727-1001'),
    (11, 'Maritza Tilton', '939 Linda Rd.', 'Burke', 'VA', '22015', '446-351-6860'),
    (12, 'Joleen Tison', '87 Queen St.', 'Drexel Hill', 'PA', '19026', '231-893-2755');
    
insert into reservation (ReservationID, RoomID, GuestID, Adults, Children, StartDate, EndDate, TotalRoomCost) values
	(1, 308, 2, 1, 0, '2023/2/2', '2023/2/4', 299.98), 
	(2, 203, 3, 2, 1, '2023/2/5', '2023/2/10', 999.95),
	(3, 305, 4, 2, 0, '2023/2/22', '2023/2/24', 349.98), 
	(4, 201, 5, 2, 2, '2023/3/6', '2023/3/7', 199.99),
	(5, 307, 1, 1, 1, '2023/3/17', '2023/3/20', 524.97),
	(6, 302, 6, 3, 0, '2023/3/18', '2023/3/23', 924.95),
	(7, 202, 7, 2, 2, '2023/3/29', '2023/3/31', 349.98),
	(8, 304, 8, 2, 0 , '2023/3/31', '2023/4/5', 874.95),
	(9, 301, 9, 1, 0, '2023/4/9', '2023/4/13', 799.96),
	(10, 207, 10, 1, 1, '2023/4/23', '2023/4/24', 174.99),
	(11, 401, 11, 2, 4, '2023/5/30', '2023/6/2', 1199.97),
	(12, 206, 12, 2, 0, '2023/6/10', '2023/6/14', 599.96),
	(13, 208, 12, 1, 0, '2023/6/10', '2023/6/14', 599.96),
	(14, 304, 6, 3, 0, '2023/6/17', '2023/6/18', 184.99),
	(15, 205, 1, 2, 0, '2023/6/28', '2023/7/2', 699.96),
	(16, 204, 9, 3, 1, '2023/7/13', '2023/7/14', 184.99),
	(17, 401, 10, 4, 2, '2023/7/18', '2023/7/21', 1259.97),
	(18, 303, 3, 2, 1, '2023/7/28', '2023/7/29', 199.99),
	(19, 305, 3, 1, 0, '2023/8/30', '2023/9/1', 349.98),
	(20, 208, 2, 2, 0, '2023/9/16', '2023/9/17', 149.99),
	(21, 203, 5, 2, 2, '2023/9/13', '2023/9/15', 399.98),
	(22, 401, 4, 2, 2, '2023/11/22', '2023/11/25', 1199.97),
	(23, 206, 2, 2, 0, '2023/11/22', '2023/11/25', 449.97),
	(24, 301, 2, 2, 2, '2023/11/22', '2023/11/25', 599.97),
	(25, 302, 11, 2, 0, '2023/12/24', '2023/12/28', 699.96);
    
delete from reservation where GuestID = 8;
delete from guest where GuestID = 8;