INSERT INTO student_data(id_student, first_name, last_name, mother_name, father_name, admission)
VALUES
	('1','Pedro','Diaz','Margarita Diaz', 'Mario Diaz','2000-01-01'),
	('2','Alvaro','Petraglia','Valeria Domenico', 'Francesco Petraglia','2000-01-01'),
	('3','Carlos','Marques','Henriqueta Marques', 'Henrique Marques','2000-01-01'),
	('4','Frederico','Anjos','Elisabete dos Anjos', 'Frederico dos Anjos','2000-01-01'),
	('5','Rozaria','Lux','Lina Lowe', 'Eduardo Lux','2000-01-02');
	
SELECT * FROM student_data;



insert into student_class(id_class, id_student)
select '1', id_student
from student_data 
where id_student IS NOT NULL;

SELECT * FROM student_class;