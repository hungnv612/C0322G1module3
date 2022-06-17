use quan_li_sinh_vien;

select * from student
WHERE student_name like "h%" ;

select * from class
where month(start_date) = "12";

select * from `subject`
where credit between 3 and 5;

update student
set  class_id  = 2
where student_name = 'Hung';

select * from `subject`,mark;

select st.student_name,sj.sub_name,m.mark
from student st
join mark m on m.student_id = st.student_id
join `subject` sj on sj.sub_id = m.sub_id
order by m.mark desc , sj.sub_name;
