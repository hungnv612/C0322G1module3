create database s3quan_ly_ban_hang;
use s3quan_ly_ban_hang;
CREATE TABLE IF NOT EXISTS customer (
    c_id INT AUTO_INCREMENT KEY,
    c_name VARCHAR(50),
    c_age INT
);
CREATE TABLE IF NOT EXISTS `order` (
    o_id INT AUTO_INCREMENT PRIMARY KEY,
    c_id INT,
    FOREIGN KEY (c_id)
        REFERENCES customer (c_id),
    o_date DATE,
    o_total_price DOUBLE
);
CREATE TABLE IF NOT EXISTS product (
    p_id INT AUTO_INCREMENT PRIMARY KEY,
    p_name VARCHAR(50),
    p_price DOUBLE
);
CREATE TABLE IF NOT EXISTS oder_detail (
    o_id INT,
    p_id INT,
    PRIMARY KEY (o_id , p_id),
    FOREIGN KEY (o_id)
        REFERENCES `order` (o_id),
    FOREIGN KEY (p_id)
        REFERENCES product (p_id),
    od_qty VARCHAR(50)
);
insert into customer(c_name,c_age ) VALUES
('minh quan', 10),
('ngoc oanh ', 20),
('hong ha', 50);
insert into `order` (c_id,o_date,o_total_price) values
(1,'2006-03-21', null),
(2,'2006-03-23', null),
(1,'2006-03-16', null);
insert into product(p_name ,p_price ) values
('may giat', 3),
('tu lanh', 5),
('dieu hoa', 7),
('quat', 1),
('bep dien', 2);
insert into oder_detail(o_id ,p_id,od_qty) VALUES
(1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);


select * from product,oder_detail,`order`;

select o.o_id , o.o_date , sum(p.p_price * od.od_qty) as o_total_price
from product p
join oder_detail od on od.p_id = p.p_id 
join `order` o on o.o_id = od.o_id
group by o.o_id;

select * from customer,oder_detail,`order`,product;

select c.c_name,p.p_name
from customer c
join `order` o on o.c_id = c.c_id
join oder_detail od on od.o_id = o.o_id
join product p on p.p_id = od.p_id;

select * from customer,oder_detail;	

select c.* , count(o.id_oder) as so_lan_mua_hang
from cutomer c
left join `oder` o on c.id_cutomer = o.id_cutomer
group by o.id_oder;

