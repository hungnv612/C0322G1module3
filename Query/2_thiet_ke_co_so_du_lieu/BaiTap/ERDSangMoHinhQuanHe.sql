-- DROP DATABASE IF EXISTS quan_ly_xuat_nhap;
create database if not exists quan_ly_xuat_nhap;

use quan_ly_xuat_nhap;

create table phieu_xuat(
id_phieu_xuat int not null,
ngay_xuat date,
primary key(id_phieu_xuat));

create table vat_tu(
id_vat_tu int not null,
ten_vat_tu varchar(50),
primary key(id_vat_tu));

create table phieu_nhap(
id_phieu_nhap int not null,
ngay_nhap date,
primary key(id_phieu_nhap));


create table nha_cung_cap(
id_nha_cung_cap int not null,
ten_nha_cung_cap varchar(50),
dia_chi_nha_cung_cap varchar(50),
primary key(id_nha_cung_cap));


create table don_dat_hang(
id_don_dat_hang int not null,
id_nha_cung_cap int,
ngay_dat_hang date,
FOREIGN KEY (id_nha_cung_cap) REFERENCES nha_cung_cap(id_nha_cung_cap),
primary key(id_don_dat_hang));



create table chi_tiet_phieu_xuat(
id_phieu_xuat int,
id_vat_tu int,
don_gia_xuat double,
so_luong_xuat int,
primary key(id_phieu_xuat,id_vat_tu),
FOREIGN KEY (id_phieu_xuat) REFERENCES phieu_xuat(id_phieu_xuat),
FOREIGN KEY (id_vat_tu) REFERENCES vat_tu(id_vat_tu));

create table chi_tiet_phieu_nhap(
id_phieu_nhap int,
id_vat_tu int,
don_gia_nhap double,
so_luong_nhap int,
primary key(id_phieu_nhap,id_vat_tu),
FOREIGN KEY (id_phieu_nhap) REFERENCES phieu_nhap(id_phieu_nhap),
FOREIGN KEY (id_vat_tu) REFERENCES vat_tu(id_vat_tu));

create table chi_tiet_don_hang(
id_don_dat_hang int,
id_vat_tu int,
primary key(id_don_dat_hang,id_vat_tu),
FOREIGN KEY (id_don_dat_hang) REFERENCES don_dat_hang(id_don_dat_hang),
FOREIGN KEY (id_vat_tu) REFERENCES vat_tu(id_vat_tu));

create table so_dien_thoai(
id_nha_cung_cap int,
sdt varchar(10),
FOREIGN KEY (id_nha_cung_cap) REFERENCES nha_cung_cap(id_nha_cung_cap));


-- drop table so_dien_thoai;
