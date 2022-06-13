create database if not exists quan_ly_diem_thi;

use quan_ly_diem_thi;
-- drop table giao_vien;
CREATE TABLE hoc_sinh(
	ma_hoc_sinh VARCHAR(20) ,
    ten_hoc_sinh VARCHAR(50),
    ngay_sinh DATETIME,
    lop VARCHAR(20),
    gioi_tinh VARCHAR(20),
PRIMARY KEY (ma_hoc_sinh));

CREATE TABLE giao_vien(
    ma_giao_vien VARCHAR(20),
    ten_gao_vien VARCHAR(20),
    sdt VARCHAR(10),
PRIMARY KEY (ma_giao_vien));

CREATE TABLE mon_hoc(
    ma_mon_hoc VARCHAR(20),
    ten_mon_hoc VARCHAR(50),
	ma_giao_vien VARCHAR(20),
    pk_ma_giao_vien VARCHAR(20) REFERENCES giao_vien(MaGV),
PRIMARY KEY (ma_mon_hoc));

CREATE TABLE bang_diem(
    ma_hoc_sinh VARCHAR(20),
    ma_mon_hoc VARCHAR(20),
    diem_thi INT,
    ngay_kiem_tra DATETIME,
    PRIMARY KEY (ma_hoc_sinh, ma_mon_hoc),
    FOREIGN KEY (ma_hoc_sinh) REFERENCES hoc_sinh(ma_hoc_sinh),
    FOREIGN KEY (ma_mon_hoc) REFERENCES mon_hoc(ma_mon_hoc)
);

