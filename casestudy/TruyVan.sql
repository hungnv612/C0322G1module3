use casestudy;

SELECT * FROM nhan_vien
WHERE ( ho_ten like "H%" OR ho_ten like "T%" OR ho_ten like "k%" ) and char_length(ho_ten) < 15;

select * from khach_hang
where ((YEAR(CURDATE()) - YEAR(ngay_sinh)) between 18 and 50) and (dia_chi like "%Đà nẵng%" or dia_chi like "%Quảng trị%");

select * from khach_hang,loai_khach,hop_dong;

select hd.ma_khach_hang, kh.ho_ten , count(hd.ma_khach_hang)
as so_lan_thue, lk.ten_loai_khach
from hop_dong hd
join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
join loai_khach lk on lk.ma_loai_khach = kh.ma_loai_khach
group by ma_khach_hang having lk.ten_loai_khach  = 'Diamond'
order by so_lan_thue desc;