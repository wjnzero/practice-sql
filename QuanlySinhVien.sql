create database quanlysinhvien;
use quanlysinhvien;

CREATE TABLE subjects
(
 subjects_id int(4) PRIMARY KEY,
 subjects_name nvarchar(50) NOT NULL
);

CREATE TABLE classes
(
 class_id int(4) PRIMARY KEY,
 class_name nvarchar(50) NOT NULL
);

CREATE TABLE students
(
 student_id int(4) PRIMARY KEY,
 students_name nvarchar(50) NOT NULL,
 age int(4) NOT NULL,
 email nvarchar(50) NOT NULL
);

CREATE TABLE marks (
  `mark` INT NULL,
  `subject_id` INT NULL,
  `student_id` INT NULL,
CONSTRAINT `students`
    FOREIGN KEY (`student_id`)
    REFERENCES `quanlysinhvien`.`students` (`student_id`),
CONSTRAINT `subject`
    FOREIGN KEY (`subject_id`)
    REFERENCES `quanlysinhvien`.`subjects` (`subjects_id`));
    
CREATE TABLE classstudent (
  `class_id` INT NULL,
  `student_id` INT NULL,
CONSTRAINT `studentclass`
    FOREIGN KEY (`student_id`)
    REFERENCES `quanlysinhvien`.`students` (`student_id`),
CONSTRAINT `classes`
    FOREIGN KEY (`class_id`)
    REFERENCES `quanlysinhvien`.`classes` (`class_id`));
    
    
INSERT INTO students (`student_id`, `students_name`, `age`, `email`) VALUES ('1', 'Nguyen Quang An', '18', 'an@yahoo.com');
INSERT INTO students (`student_id`, `students_name`, `age`, `email`) VALUES ('2', 'Nguyen Cong Vinh', '20', 'vinh@gmail.com');
INSERT INTO students (`student_id`, `students_name`, `age`, `email`) VALUES ('3', 'Nguyen Van Quyen', '19', 'quyen');
INSERT INTO students (`student_id`, `students_name`, `age`, `email`) VALUES ('4', 'Pham Thanh Binh', '25', 'binh@com');
INSERT INTO students (`student_id`, `students_name`, `age`, `email`) VALUES ('5', 'Nguyen Van Tai Em', '30', 'taiem@sport.vn');

INSERT INTO classes (`class_id`, `class_name`) VALUES ('1', 'C0706L');
INSERT INTO classes (`class_id`, `class_name`) VALUES ('2', 'C0708G');

INSERT INTO classstudent (`class_id`, `student_id`) VALUES ('1', '1');
INSERT INTO classstudent (`class_id`, `student_id`) VALUES ('1', '2');
INSERT INTO classstudent (`class_id`, `student_id`) VALUES ('2', '3');
INSERT INTO classstudent (`class_id`, `student_id`) VALUES ('2', '4');
INSERT INTO classstudent (`class_id`, `student_id`) VALUES ('2', '5');

INSERT INTO subjects (`subjects_id`, `subjects_name`) VALUES ('1', 'SQL');
INSERT INTO subjects (`subjects_id`, `subjects_name`) VALUES ('2', 'Java');
INSERT INTO subjects (`subjects_id`, `subjects_name`) VALUES ('3', 'C');
INSERT INTO subjects (`subjects_id`, `subjects_name`) VALUES ('4', 'VB');


INSERT INTO marks (`mark`, `subject_id`, `student_id`) VALUES ('8', '1','1');
INSERT INTO marks (`mark`, `subject_id`, `student_id`) VALUES ('4', '2','1');
INSERT INTO marks (`mark`, `subject_id`, `student_id`) VALUES ('9', '1','1');
INSERT INTO marks (`mark`, `subject_id`, `student_id`) VALUES ('7', '1','3');
INSERT INTO marks (`mark`, `subject_id`, `student_id`) VALUES ('3', '1','4');
INSERT INTO marks (`mark`, `subject_id`, `student_id`) VALUES ('5', '2','5');
INSERT INTO marks (`mark`, `subject_id`, `student_id`) VALUES ('8', '3','3');
INSERT INTO marks (`mark`, `subject_id`, `student_id`) VALUES ('1', '3','5');
INSERT INTO marks (`mark`, `subject_id`, `student_id`) VALUES ('3', '2','4');


select * from students;
select * from subjects;
select avg(mark) as average_mark from marks;
select subjects_name, max(mark) as mark from subjects join marks on subjects.subjects_id = marks.subject_id;
select * from marks order by mark desc;

ALTER TABLE subjects
MODIFY COLUMN subjects_name nvarchar(255);

ALTER TABLE students DROP COLUMN column_name;




