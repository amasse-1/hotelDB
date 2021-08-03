use hoteldb;

-- 1. getting a list of reservations that end in July 2023
select g.Name, r.RoomID, r.StartDate, r.EndDate
from reservation r 
inner join Guest g on r.GuestID = g.GuestID
where r.EndDate LIKE '2023-07%';
/* Anthony Masse	205	2023-06-28	2023-07-02
Walter Holaway	204	2023-07-13	2023-07-14
Wilfred Vise	401	2023-07-18	2023-07-21
Bettyann Seery	303	2023-07-28	2023-07-29
*/

-- 2. list all the reservations with jacuzzi with the name, room number, and dates of reservations
select g.Name, r.RoomID, r.StartDate, r.EndDate
from reservation r 
inner join guest g on r.GuestID = g.GuestID
inner join room rm on r.RoomID = rm.RoomID
inner join amenities a on rm.AmenityID = a.AmenityID
where a.Fee = 25; -- additional price with jacuzzi is 25 so check with that fee
/* 2. Karie Yang	201	2023-03-06	2023-03-07
Bettyann Seery	203	2023-02-05	2023-02-10
Karie Yang	203	2023-09-13	2023-09-15
Walter Holaway	301	2023-04-09	2023-04-13
Mack Simmer	301	2023-11-22	2023-11-25
Bettyann Seery	303	2023-07-28	2023-07-29
Anthony Masse	205	2023-06-28	2023-07-02
Wilfred Vise	207	2023-04-23	2023-04-24
Duane Cullison	305	2023-02-22	2023-02-24
Bettyann Seery	305	2023-08-30	2023-09-01
Anthony Masse	307	2023-03-17	2023-03-20
*/

-- 3. choose a guest name and look up reservations with dates, rooms, and total people
select 
	g.Name,
    r.RoomID,
    r.StartDate, 
    r.EndDate,
	sum(r.Adults + r.Children) total_people
from reservation r
inner join guest g on r.GuestID = g.GuestID
where r.GuestID = 1
group by r.RoomID;
/* Anthony Masse	307	2023-03-17	2023-03-20	2
Anthony Masse	205	2023-06-28	2023-07-02	2
*/

-- 4. returns list of rooms with reservationID's and the per room cost for each reservation 
select 
	r.RoomID,
    res.ReservationID, 
    res.TotalRoomCost TotalReservationCost
from Room r
left outer join reservation res on r.RoomID = res.RoomID;
/* 4.  202	7	349.98
204	16	184.99
302	6	924.95
302	25	699.96
304	14	184.99
206	12	599.96
206	23	449.97
208	13	599.96
208	20	149.99
306		
308	1	299.98
201	4	199.99
203	2	999.95
203	21	399.98
301	9	799.96
301	24	599.97
303	18	199.99
205	15	699.96
207	10	174.99
305	3	349.98
305	19	349.98
307	5	524.97
401	11	1199.97
401	17	1259.97
401	22	1199.97
402		
*/

-- 5. returns all the rooms that can have an occupancy of at least 3 people in April 2023
select 
	r.RoomID,
    count(r.ReservationID) as NumberOfReservations
from reservation r
inner join Room rm on r.RoomID = rm.RoomID
where ((r.StartDate BETWEEN '2023-04-01' and '2023-04-30') OR (r.EndDate BETWEEN '2023-04-01' and '2023-04-30') OR (r.Startdate < 2023-04-01) AND (r.Enddate > 2023-04-30)) and rm.MaxOccupancy>2
group by RoomID;
-- 5. '301', '1'

-- 6. list of guests and number of reservations of guests in descending order
select 
	g.Name,
    count(r.ReservationID) NumberOfReservations
from reservation r
inner join guest g on r.GuestID = g.GuestID
group by g.Name;
/* 6. Anthony Masse	2
Mack Simmer	4
Bettyann Seery	3
Duane Cullison	2
Karie Yang	2
Aurore Lipton	2
Zachery Luechtefeld	1
Walter Holaway	2
Wilfred Vise	2
Maritza Tilton	2
Joleen Tison	2 */

-- 7. display guests name address and phone number based on an existing phone number
select 
	Name, 
    Address, 
    PhoneNumber
from guest 
where PhoneNumber = '781-617-2839';
-- 'Anthony Masse', '0 Downtown St', '781-617-2839'