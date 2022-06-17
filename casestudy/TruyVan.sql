use casestudy;
-- cau 2
SELECT * FROM nhan_vien
WHERE ( ho_ten like "H%" OR ho_ten like "T%" OR ho_ten like "k%" ) and char_length(ho_ten) < 15;
-- cau 3
select * from khach_hang
where ((YEAR(CURDATE()) - YEAR(ngay_sinh)) between 18 and 50) and (dia_chi like "%Đà nẵng%" or dia_chi like "%Quảng trị%");
-- cau 4

select hd.ma_khach_hang, kh.ho_ten , count(hd.ma_khach_hang)
as so_lan_thue, lk.ten_loai_khach
from hop_dong hd
join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
join loai_khach lk on lk.ma_loai_khach = kh.ma_loai_khach
group by ma_khach_hang having lk.ten_loai_khach  = 'Diamond'
order by so_lan_thue ;

-- cau 5
select * from khach_hang,loai_khach,hop_dong, loai_dich_vu;
            
            
            
select kh.ma_khach_hang, kh.ho_ten, lk.ten_loai_khach, hd.ma_hop_dong, dv.ten_dich_vu, hd.ngay_lam_hop_dong, hd.ngay_ket_thuc_hop_dong, ifnull(dv.chi_phi_thue,0) + ifnull(dvdk.gia * hdct.so_luong,0) as tong_tien
from khach_hang kh
left join loai_khach lk on lk.ma_loai_khach = kh.ma_loai_khach
left join  hop_dong hd on hd.ma_khach_hang = kh.ma_khach_hang
left join  dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
left join  hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
left join  dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
group by ma_khach_hang;

-- cau 6
	
select dv.ma_dich_vu,dv.ten_dich_vu,dv.dien_tich,dv.chi_phi_thue,ldv.ten_loai_dich_vu
from hop_dong hd
join dich_vu dv on hd.ma_dich_vu= dv.ma_dich_vu
join loai_dich_vu ldv on dv.ma_loai_dich_vu= ldv.ma_loai_dich_vu
group by dv.ma_dich_vu
having dv.ma_dich_vu not in
( select dv.ma_dich_vu from hop_dong hd
join dich_vu dv on hd.ma_dich_vu= dv.ma_dich_vu
join loai_dich_vu ldv on dv.ma_loai_dich_vu= ldv.ma_loai_dich_vu
where month(hd.ngay_lam_hop_dong) between 1 and 3 and year(hd.ngay_lam_hop_dong)='2021' );

-- cau 7
select dv.ma_dich_vu,
dv.ten_dich_vu,
dv.dien_tich,
dv.so_nguoi_toi_da,
dv.chi_phi_thue,
ldv.ten_loai_dich_vu
from hop_dong hd
join dich_vu dv on hd.ma_dich_vu= dv.ma_dich_vu
join loai_dich_vu ldv on dv.ma_loai_dich_vu= ldv.ma_loai_dich_vu
group by dv.ma_dich_vu
having dv.ma_dich_vu not in
( select dv.ma_dich_vu from hop_dong hd
join dich_vu dv on hd.ma_dich_vu= dv.ma_dich_vu
join loai_dich_vu ldv on dv.ma_loai_dich_vu= ldv.ma_loai_dich_vu
where year(hd.ngay_lam_hop_dong) ='2021' ) ;


-- cau 8
-- cach 1
select ho_ten from khach_hang
group by ho_ten;

-- cach 2
select distinct ho_ten from khach_hang;

-- cach 3
select ho_ten from khach_hang
union
select ho_ten from khach_hang;

-- cau 9
select month(ngay_lam_hop_dong) as thang , count(ma_khach_hang) as so_luong_khach_hang from hop_dong
where year(ngay_lam_hop_dong) = '2021'
group by thang
order by thang;


-- cau 10
select hd.ma_hop_dong ,
hd.ngay_lam_hop_dong ,
hd.ngay_ket_thuc_hop_dong ,
hd.tien_dat_coc ,
sum(ifnull(hdct.so_luong,0)) from hop_dong hd
left join hop_dong_chi_tiet hdct  on hdct.ma_hop_dong = hd.ma_hop_dong
left join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
group by hd.ma_hop_dong
order by ma_hop_dong









