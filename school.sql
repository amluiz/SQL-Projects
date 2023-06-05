CREATE TABLE student_data (
	id_student INT,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255),
	mother_name VARCHAR(255),
	father_name VARCHAR(255),
	admission DATE,
	PRIMARY KEY(id_student)
);


CREATE TABLE high_school_year (
	id_student INT,
	id_year INT,
	id_bimester INT,
	id_class INT,
	physics INT,
	math INT,
	physical_education INT,
	history INT,
	arts INT,
	portuguese INT,
	geography INT,
	philosophy INT,
	sociology INT,
	chemistry INT,
	biology INT,
	english INT,
	PRIMARY KEY(id_year),
	FOREIGN KEY(id_student) REFERENCES student_data(id_student),
	FOREIGN KEY(id_class) REFERENCES student_class(id_class),
	FOREIGN KEY(id_bimester) REFERENCES grades(id_bimester)
);

CREATE TABLE student_class(
	id_student INT,
	id_class INT,
	PRIMARY KEY(id_class),
	FOREIGN KEY(id_student)
		REFERENCES student_data(id_student)
);

CREATE TABLE teacher(
	id_teacher INT,
	id_class INT,
	id_subject INT,
	teacher_name VARCHAR(255) NOT NULL,
	teacher_surname VARCHAR(255),
	PRIMARY KEY(id_teacher),
	FOREIGN KEY(id_class)
		REFERENCES student_class(id_class)
);

CREATE TABLE subjects(
	id_subject INT,
	subject_name VARCHAR(255),
	PRIMARY KEY(id_subject)
);

CREATE TABLE grades(
	id_student INT,
	id_bimester INT,
	id_class INT,
	id_year INT,
	id_subject INT,
	activity_one INT,
	activity_two INT,
	project INT,
	exam INT,
	total INT,
	PRIMARY KEY(id_bimester),
	FOREIGN KEY(id_student) REFERENCES student_data(id_student),
	FOREIGN KEY(id_class) REFERENCES student_class(id_class),
	FOREIGN KEY(id_subject) REFERENCES subjects(id_subject),
	FOREIGN KEY(id_year) REFERENCES high_school_year(id_year)
);

INSERT INTO subjects(id_subject, subject_name)
VALUES 
	('1','physics'),
	('2','math'),
	('3','physical education'),
	('4','history'),
	('5','arts'),
	('6','portuguese'),
	('7','geography'),
	('8','philosophy'),
	('9','sociology'),
	('10','chemistry'),
	('11','biology'),
	('12','english');

