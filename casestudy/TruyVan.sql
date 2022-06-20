use casestudy;
-- cau  2.Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên 
-- bắt đầu là một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự.
SELECT * FROM nhan_vien
WHERE ( ho_ten like "H%" OR ho_ten like "T%" OR ho_ten like "k%" ) and char_length(ho_ten) < 15;

-- cau  3.Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
select * from khach_hang
where ((YEAR(CURDATE()) - YEAR(ngay_sinh)) between 18 and 50) and (dia_chi like "%Đà nẵng%" or dia_chi like "%Quảng trị%");

-- cau 4 4.Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần.
--  Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng.
--  Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.

select hd.ma_khach_hang, kh.ho_ten , count(hd.ma_khach_hang)
as so_lan_thue, lk.ten_loai_khach
from hop_dong hd
join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
join loai_khach lk on lk.ma_loai_khach = kh.ma_loai_khach
group by ma_khach_hang having lk.ten_loai_khach  = 'Diamond'
order by so_lan_thue ;

-- cau 5.Hiển thị ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong, ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc,
 -- tong_tien (Với tổng tiền được tính theo công thức như sau: 
--  Chi Phí Thuê + Số Lượng * Giá, với Số Lượng và Giá là từ bảng dich_vu_di_kem, hop_dong_chi_tiet)
--  cho tất cả các khách hàng đã từng đặt phòng. (những khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).

select kh.ma_khach_hang, kh.ho_ten, lk.ten_loai_khach, hd.ma_hop_dong, dv.ten_dich_vu, hd.ngay_lam_hop_dong, hd.ngay_ket_thuc_hop_dong, ifnull(dv.chi_phi_thue,0) + ifnull(dvdk.gia * hdct.so_luong,0) as tong_tien
from khach_hang kh
left join loai_khach lk on lk.ma_loai_khach = kh.ma_loai_khach
left join  hop_dong hd on hd.ma_khach_hang = kh.ma_khach_hang
left join  dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
left join  hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
left join  dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
group by ma_khach_hang;

-- cau 6.Hiển thị ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu của tất cả các loại dịch vụ 
-- chưa từng được khách hàng thực hiện đặt từ quý 1 của năm 2021 (Quý 1 là tháng 1, 2, 3).
	
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

-- cau 7.Hiển thị thông tin ma_dich_vu, ten_dich_vu, dien_tich, so_nguoi_toi_da, chi_phi_thue,
--  ten_loai_dich_vu của tất cả các loại dịch vụ đã từng được khách hàng đặt phòng trong năm 2020
--  nhưng chưa từng được khách hàng đặt phòng trong năm 2021.

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


-- cau 8.Hiển thị thông tin ho_ten khách hàng có trong hệ thống, với yêu cầu ho_ten không trùng nhau.

-- cach 1
select ho_ten from khach_hang
group by ho_ten;

-- cach 2
select distinct ho_ten from khach_hang;

-- cach 3
select ho_ten from khach_hang
union
select ho_ten from khach_hang;

-- cau 9.Thực hiện thống kê doanh thu theo tháng, nghĩa là tương ứng với mỗi tháng trong năm 2021
 -- thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng.
 
select month(ngay_lam_hop_dong) as thang , count(ma_khach_hang) as so_luong_khach_hang from hop_dong
where year(ngay_lam_hop_dong) = '2021'
group by thang
order by thang;


-- cau 10 .Hiển thị thông tin tương ứng với từng hợp đồng thì đã sử dụng bao nhiêu dịch vụ đi kèm.
 -- Kết quả hiển thị bao gồm ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, so_luong_dich_vu_di_kem 
--  (được tính dựa trên việc sum so_luong ở dich_vu_di_kem).  

select hd.ma_hop_dong ,
hd.ngay_lam_hop_dong ,
hd.ngay_ket_thuc_hop_dong ,
hd.tien_dat_coc ,
sum(ifnull(hdct.so_luong,0)) from hop_dong hd
left join hop_dong_chi_tiet hdct  on hdct.ma_hop_dong = hd.ma_hop_dong
left join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
group by hd.ma_hop_dong
order by ma_hop_dong;


-- cau 11.Hiển thị thông tin các dịch vụ đi kèm đã được sử dụng bởi những khách hàng có ten_loai_khach là “Diamond” 
-- và có dia_chi ở “Vinh” hoặc “Quảng Ngãi”.

select dvdk.ma_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem
from dich_vu_di_kem dvdk
join hop_dong_chi_tiet hdct on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
join hop_dong hd on hd.ma_hop_dong = hdct.ma_hop_dong
join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
join loai_khach lk on lk.ma_loai_khach = kh.ma_loai_khach
where lk.ten_loai_khach = 'Diamond'  and (kh.dia_chi like '%Quảng Ngãi' or kh.dia_chi like '%Vinh');

-- cau  12.Hiển thị thông tin ma_hop_dong, ho_ten (nhân viên), ho_ten (khách hàng), so_dien_thoai (khách hàng),
 -- ten_dich_vu, so_luong_dich_vu_di_kem (được tính dựa trên việc sum so_luong ở dich_vu_di_kem),
--  tien_dat_coc của tất cả các dịch vụ đã từng được khách hàng đặt vào 3 tháng cuối năm 2020 nhưng
--  chưa từng được khách hàng đặt vào 6 tháng đầu năm 2021

select hd.ma_hop_dong, nv.ho_ten as ho_ten_nhan_vien, kh.ho_ten as ho_ten_khach_hang, kh.so_dien_thoai, dv.ten_dich_vu, sum(hdct.so_luong) as so_luong_dich_vu_di_kem, hd.tien_dat_coc
from hop_dong hd
join nhan_vien nv on hd.ma_nhan_vien = nv.ma_nhan_vien
join khach_hang kh on hd.ma_khach_hang = kh.ma_khach_hang
join dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu
join hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong                                                                                                                                                                                                                                                          
where (hd.ngay_lam_hop_dong between '2020-10-01' and '2021-12-31') and hd.ngay_lam_hop_dong
not in (select ngay_lam_hop_dong from hop_dong where
ngay_lam_hop_dong between '2021-01-01' and '2021-06-01' );


-- cau 13.Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng. 
-- (Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng nhiều như nhau).

select dvdk.ma_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem, sum(hdct.so_luong) as so_luong_dich_vu_di_kem
from dich_vu_di_kem dvdk
join hop_dong_chi_tiet hdct on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
group by dvdk.ma_dich_vu_di_kem
having sum(hdct.so_luong) >= all (select sum(hdct.so_luong) 
from dich_vu_di_kem dvdk
join hop_dong_chi_tiet hdct on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
group by dvdk.ma_dich_vu_di_kem);



-- 14.	Hiển thị thông tin tất cả các Dịch vụ đi kèm chỉ mới được sử dụng một lần duy nhất. Thông tin hiển thị bao gồm ma_hop_dong,
--  ten_loai_dich_vu, ten_dich_vu_di_kem, so_lan_su_dung (được tính dựa trên việc count các ma_dich_vu_di_kem).
select hd.ma_hop_dong, ldv.ten_loai_dich_vu, dvdk.ten_dich_vu_di_kem, count(dvdk.ma_dich_vu_di_kem) as so_lan_su_dung
from hop_dong hd
join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
join loai_dich_vu ldv on ldv.ma_loai_dich_vu = dv.ma_loai_dich_vu
group by dvdk.ten_dich_vu_di_kem
having count(dvdk.ma_dich_vu_di_kem) = 1;




-- 15.	Hiển thi thông tin của tất cả nhân viên bao gồm ma_nhan_vien, ho_ten, ten_trinh_do, ten_bo_phan, so_dien_thoai, dia_chi mới chỉ lập được tối đa 3 hợp đồng từ năm 2020 đến 2021.
select nv.ma_nhan_vien, nv.ho_ten, td.ten_trinh_do, bp.ten_bo_phan, nv.so_dien_thoai, nv.dia_chi
from nhan_vien nv
join bo_phan bp on bp.ma_bo_phan = nv.ma_bo_phan
join trinh_do td on td.ma_trinh_do = nv.ma_trinh_do
join hop_dong hd on hd.ma_nhan_vien = nv.ma_nhan_vien
group by nv.ma_nhan_vien
having count(hd.ma_nhan_vien) <= 3;



SET SQL_SAFE_UPDATES = 0;


-- 16.	Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021.
delete 
from nhan_vien
where ma_nhan_vien in (select * from (select nv.ma_nhan_vien
									  from nhan_vien nv
									  left join hop_dong hd on hd.ma_nhan_vien = nv.ma_nhan_vien
									  group by nv.ma_nhan_vien
									  having count(hd.ma_nhan_vien) = 0) temp);



-- 17.	Cập nhật thông tin những khách hàng có ten_loai_khach từ Platinum lên Diamond, chỉ cập nhật những khách hàng đã từng đặt phòng với Tổng Tiền thanh toán trong năm 2021 là lớn hơn 10.000.000 VNĐ.
update khach_hang
set ma_loai_khach = 1 where ma_loai_khach in (select * from(
												select lk.ma_loai_khach from loai_khach lk
												left join khach_hang kh on lk.ma_loai_khach = kh.ma_loai_khach
												left join hop_dong hd on kh.ma_khach_hang = hd.ma_khach_hang
												left join hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
												left join dich_vu_di_kem dvdk on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
												left join dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu
												where (year(hd.ngay_lam_hop_dong) = 2021) and  (ifnull(dv.chi_phi_thue,0) + ifnull(so_luong * dvdk.gia,0) > 10000000)
												group by kh.ma_khach_hang
												having lk.ma_loai_khach = 2)temp);
                                      
                                      select*from khach_hang;
                                      
                                      
-- 18.	Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc giữa các bảng).
update khach_hang kh
set `check`  = 1
where kh.ma_khach_hang in (select * from(
							select kh.ma_khach_hang From khach_hang kh
							join hop_dong hd on kh.ma_khach_hang = hd.ma_khach_hang
							where year(hd.ngay_lam_hop_dong) < 2021
							group by kh.ma_khach_hang)temp);
                            
                            
select ma_khach_hang, ho_ten from khach_hang where `check` = 1;
								
				
                                
                                
-- 19.	Cập nhật giá cho các dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2020 lên gấp đôi.

update dich_vu_di_kem 
set gia = gia * 2
where ma_dich_vu_di_kem in (select * from (select dvdk.ma_dich_vu_di_kem
										   from dich_vu_di_kem dvdk
										   join hop_dong_chi_tiet hdct on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
                                           join hop_dong hd on hdct.ma_hop_dong = hd.ma_hop_dong
										   where hdct.so_luong >= 10 and year(hd.ngay_lam_hop_dong)= 2020) temp);
                                           
                                           
select
nv.ma_nhan_vien,
nv.ho_ten,
nv.email,
nv.so_dien_thoai,
nv.ngay_sinh,
nv.dia_chi
from nhan_vien nv
union
select
kh.ma_khach_hang,
kh.ho_ten,
kh.email,
kh.so_dien_thoai,
kh.ngay_sinh,
kh.dia_chi
from khach_hang kh; 
                                           