USE QuanLySinhVien;

select S.StudentName
from student S
where left(StudentName,1) = "H";

select *
from class 
where month(StartDate)= 12;

select*
from subject
where Credit >=3 and Credit<=5;

update student
set classId =2
where StudentId = 1;

select M.mark , S.SubName, ST.StudentName
from mark M join student ST on M.StudentId = ST.StudentId
join subject S on M.SubId = S.SubId
order by M.mark

