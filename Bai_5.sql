SELECT title AS 'Tên khóa học',
	price AS 'Giá gốc',
	(SELECT AVG(price) FROM Courses) AS 'Giá trung bình sàn',
	price - (SELECT AVG(price) FROM Courses) AS 'Mức chênh lệch'
FROM Courses;

SELECT title AS 'Khóa học ế'
FROM Courses AS c
WHERE NOT EXISTS (
    SELECT * FROM Enrollments AS e 
    WHERE e.course_id = c.id
);