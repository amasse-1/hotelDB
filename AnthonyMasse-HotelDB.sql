drop database if exists HotelDB;

create database HotelDB;

use HotelDB;

create table if not exists Amenities(
	AmenityID int auto_increment primary key,
    RoomAmenity varchar(50) not null,
    Fee int not null
);

create table if not exists Room(
	RoomID int primary key,
    AmenityID int not null,
    RoomType varchar(6), 
    StandardOccupancy int not null,
    MaxOccupancy int not null,
    BasePrice double not null,
    ExtraPerson int null,
    ADAAccessible varchar(3),
    foreign key(AmenityID) references Amenities(AmenityID)
);


create table if not exists Guest(
	GuestID int auto_increment primary key,
    Name varchar(30) not null,
    Address varchar(50) null,
    City varchar(25) null,
    State varchar(2) null,
    ZipCode varchar(5) null, -- decided to do varchar(5) instead of int due to length
    PhoneNumber varchar(15) null
);

create table if not exists Reservation(
	ReservationID int auto_increment primary key,
    RoomID int not null, 
    GuestID int not null, 
    Adults int default(1),
    Children int default(0),
    StartDate date not null,
    EndDate date not null, 
    TotalRoomCost double not null,
    foreign key(RoomID) references Room(RoomID),
	foreign key(GuestID) references Guest(GuestID)
);

-- bridge table     
create table if not exists RoomReservation(
	ReservationID int not null,
    RoomID int not null,
	foreign key(RoomID) references Room(RoomID),
    foreign key(ReservationID) references Reservation(ReservationID)
);