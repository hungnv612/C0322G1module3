create database if not exists quan_ly_ban_hang;

use quan_ly_ban_hang;

create table cutomer(
id_cutomer int auto_increment,
name_cutomer varchar(30),
age_cutomer int,
primary key(id_cutomer));

create table oder(
id_oder int auto_increment,
id_cutomer int,
date_oder date,
total_price_oder double,
FOREIGN KEY (id_cutomer) REFERENCES cutomer(id_cutomer),
primary key(id_oder));

create table pruduct(
id_pruductr int auto_increment,
name_pruduct varchar(30),
price_pruduct double,
primary key(id_pruductr));

create table oder_dentail(
id_pruductr int ,
id_oder int ,
qty_oder_dentail varchar(30),
primary key(id_pruductr,id_oder),
FOREIGN KEY (id_pruductr) REFERENCES pruduct(id_pruductr),
FOREIGN KEY (id_oder) REFERENCES oder(id_oder));

