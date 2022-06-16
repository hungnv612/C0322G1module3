use quan_li_sinh_vien;

select * from `subject`
where credit in(
select max(credit) from `subject`);


select s.*, max(mark) from `subject`s
join mark m on m.sub_id = s.sub_id
where mark in (select max(mark) from mark);

select s.*, avg(m.mark) as diem_tb from student s
join mark m on m.student_id = s.student_id
group by student_id
order by diem_tb desc ;

