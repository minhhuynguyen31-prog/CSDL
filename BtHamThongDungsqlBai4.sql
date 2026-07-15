USE QuanLySinhVien;

SELECT * FROM subject 
WHERE Credit = (SELECT MAX(Credit) FROM subject);

SELECT *
FROM subject S join mark M on S.SubId=M.SubId
WHERE Mark = (SELECT MAX(Mark) FROM Mark);

SELECT S.*, AVG(M.Mark) AS DiemTrungBinh
FROM student S 
JOIN mark M ON S.StudentId = M.StudentId
GROUP BY S.StudentId
ORDER BY DiemTrungBinh DESC;